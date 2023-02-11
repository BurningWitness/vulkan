{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkViewport}
  alignment _ = #{alignment struct VkViewport}

  peek ptr = 
    VkViewport
       <$> peek (offset @"x" ptr)
       <*> peek (offset @"y" ptr)
       <*> peek (offset @"width" ptr)
       <*> peek (offset @"height" ptr)
       <*> peek (offset @"minDepth" ptr)
       <*> peek (offset @"maxDepth" ptr)

  poke ptr val = do
    pokeField @"x" ptr val
    pokeField @"y" ptr val
    pokeField @"width" ptr val
    pokeField @"height" ptr val
    pokeField @"minDepth" ptr val
    pokeField @"maxDepth" ptr val

instance Offset "x" VkViewport where
  rawOffset = #{offset struct VkViewport, x}

instance Offset "y" VkViewport where
  rawOffset = #{offset struct VkViewport, y}

instance Offset "width" VkViewport where
  rawOffset = #{offset struct VkViewport, width}

instance Offset "height" VkViewport where
  rawOffset = #{offset struct VkViewport, height}

instance Offset "minDepth" VkViewport where
  rawOffset = #{offset struct VkViewport, minDepth}

instance Offset "maxDepth" VkViewport where
  rawOffset = #{offset struct VkViewport, maxDepth}