{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_incremental_present

module Vulkan.Types.Struct.VkPresentRegionKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkRectLayerKHR



data {-# CTYPE "vulkan/vulkan.h" "VkPresentRegionKHR" #-} VkPresentRegionKHR =
       VkPresentRegionKHR
         { rectangleCount :: #{type uint32_t} -- ^ Number of rectangles in pRectangles
         , pRectangles :: Ptr VkRectLayerKHR -- ^ Array of rectangles that have changed in a swapchain's image(s)
         }

instance Storable VkPresentRegionKHR where
  sizeOf    _ = #{size      struct VkPresentRegionKHR}
  alignment _ = #{alignment struct VkPresentRegionKHR}

  peek ptr = 
    VkPresentRegionKHR
       <$> peek (offset @"rectangleCount" ptr)
       <*> peek (offset @"pRectangles" ptr)

  poke ptr val = do
    pokeField @"rectangleCount" ptr val
    pokeField @"pRectangles" ptr val

instance Offset "rectangleCount" VkPresentRegionKHR where
  rawOffset = #{offset struct VkPresentRegionKHR, rectangleCount}

instance Offset "pRectangles" VkPresentRegionKHR where
  rawOffset = #{offset struct VkPresentRegionKHR, pRectangles}

#else

module Vulkan.Types.Struct.VkPresentRegionKHR where

#endif