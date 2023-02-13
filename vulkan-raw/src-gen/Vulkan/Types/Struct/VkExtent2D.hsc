{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkExtent2D where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkExtent2D" #-} VkExtent2D =
       VkExtent2D
         { width :: #{type uint32_t}
         , height :: #{type uint32_t}
         }

instance Storable VkExtent2D where
  sizeOf    _ = #{size      VkExtent2D}
  alignment _ = #{alignment VkExtent2D}

  peek ptr = 
    VkExtent2D
       <$> peek (offset @"width" ptr)
       <*> peek (offset @"height" ptr)

  poke ptr val = do
    pokeField @"width" ptr val
    pokeField @"height" ptr val

instance Offset "width" VkExtent2D where
  rawOffset = #{offset VkExtent2D, width}

instance Offset "height" VkExtent2D where
  rawOffset = #{offset VkExtent2D, height}