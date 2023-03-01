{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPresentRegionKHR}
  alignment _ = #{alignment VkPresentRegionKHR}

  peek ptr = 
    VkPresentRegionKHR
       <$> peek (Foreign.Storable.Offset.offset @"rectangleCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pRectangles" ptr)

  poke ptr val = do
    pokeField @"rectangleCount" ptr val
    pokeField @"pRectangles" ptr val

instance Offset "rectangleCount" VkPresentRegionKHR where
  rawOffset = #{offset VkPresentRegionKHR, rectangleCount}

instance Offset "pRectangles" VkPresentRegionKHR where
  rawOffset = #{offset VkPresentRegionKHR, pRectangles}

#else

module Vulkan.Types.Struct.VkPresentRegionKHR where

#endif