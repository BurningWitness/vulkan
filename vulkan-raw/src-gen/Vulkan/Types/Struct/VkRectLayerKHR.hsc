{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_incremental_present

module Vulkan.Types.Struct.VkRectLayerKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkExtent2D
import Vulkan.Types.Struct.VkOffset2D



data {-# CTYPE "vulkan/vulkan.h" "VkRectLayerKHR" #-} VkRectLayerKHR =
       VkRectLayerKHR
         { offset :: VkOffset2D -- ^ upper-left corner of a rectangle that has not changed, in pixels of a presentation images
         , extent :: VkExtent2D -- ^ Dimensions of a rectangle that has not changed, in pixels of a presentation images
         , layer :: #{type uint32_t} -- ^ Layer of a swapchain's image(s), for stereoscopic-3D images
         }

instance Storable VkRectLayerKHR where
  sizeOf    _ = #{size      VkRectLayerKHR}
  alignment _ = #{alignment VkRectLayerKHR}

  peek ptr = 
    VkRectLayerKHR
       <$> peek (Foreign.Storable.Offset.offset @"offset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"layer" ptr)

  poke ptr val = do
    pokeField @"offset" ptr val
    pokeField @"extent" ptr val
    pokeField @"layer" ptr val

instance Offset "offset" VkRectLayerKHR where
  rawOffset = #{offset VkRectLayerKHR, offset}

instance Offset "extent" VkRectLayerKHR where
  rawOffset = #{offset VkRectLayerKHR, extent}

instance Offset "layer" VkRectLayerKHR where
  rawOffset = #{offset VkRectLayerKHR, layer}

#else

module Vulkan.Types.Struct.VkRectLayerKHR where

#endif