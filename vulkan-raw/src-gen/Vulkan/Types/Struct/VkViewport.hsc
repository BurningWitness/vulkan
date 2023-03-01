{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkViewport where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkViewport" #-} VkViewport =
       VkViewport
         { x :: #{type float}
         , y :: #{type float}
         , width :: #{type float}
         , height :: #{type float}
         , minDepth :: #{type float}
         , maxDepth :: #{type float}
         }

instance Storable VkViewport where
  sizeOf    _ = #{size      VkViewport}
  alignment _ = #{alignment VkViewport}

  peek ptr = 
    VkViewport
       <$> peek (Foreign.Storable.Offset.offset @"x" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"y" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"width" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"height" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minDepth" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDepth" ptr)

  poke ptr val = do
    pokeField @"x" ptr val
    pokeField @"y" ptr val
    pokeField @"width" ptr val
    pokeField @"height" ptr val
    pokeField @"minDepth" ptr val
    pokeField @"maxDepth" ptr val

instance Offset "x" VkViewport where
  rawOffset = #{offset VkViewport, x}

instance Offset "y" VkViewport where
  rawOffset = #{offset VkViewport, y}

instance Offset "width" VkViewport where
  rawOffset = #{offset VkViewport, width}

instance Offset "height" VkViewport where
  rawOffset = #{offset VkViewport, height}

instance Offset "minDepth" VkViewport where
  rawOffset = #{offset VkViewport, minDepth}

instance Offset "maxDepth" VkViewport where
  rawOffset = #{offset VkViewport, maxDepth}