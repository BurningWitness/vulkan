{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering

module Vulkan.Types.Struct.VkPhysicalDeviceDynamicRenderingFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDynamicRenderingFeaturesKHR" #-} VkPhysicalDeviceDynamicRenderingFeaturesKHR =
       VkPhysicalDeviceDynamicRenderingFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , dynamicRendering :: VkBool32
         }

instance Storable VkPhysicalDeviceDynamicRenderingFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceDynamicRenderingFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceDynamicRenderingFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceDynamicRenderingFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dynamicRendering" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dynamicRendering" ptr val

instance Offset "sType" VkPhysicalDeviceDynamicRenderingFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceDynamicRenderingFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceDynamicRenderingFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceDynamicRenderingFeaturesKHR, pNext}

instance Offset "dynamicRendering" VkPhysicalDeviceDynamicRenderingFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceDynamicRenderingFeaturesKHR, dynamicRendering}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDynamicRenderingFeaturesKHR where

#endif