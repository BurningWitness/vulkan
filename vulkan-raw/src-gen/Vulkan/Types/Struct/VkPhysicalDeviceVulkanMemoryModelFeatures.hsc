{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceVulkanMemoryModelFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVulkanMemoryModelFeatures" #-} VkPhysicalDeviceVulkanMemoryModelFeatures =
       VkPhysicalDeviceVulkanMemoryModelFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , vulkanMemoryModel :: VkBool32
         , vulkanMemoryModelDeviceScope :: VkBool32
         , vulkanMemoryModelAvailabilityVisibilityChains :: VkBool32
         }

instance Storable VkPhysicalDeviceVulkanMemoryModelFeatures where
  sizeOf    _ = #{size      struct VkPhysicalDeviceVulkanMemoryModelFeatures}
  alignment _ = #{alignment struct VkPhysicalDeviceVulkanMemoryModelFeatures}

  peek ptr = 
    VkPhysicalDeviceVulkanMemoryModelFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"vulkanMemoryModel" ptr)
       <*> peek (offset @"vulkanMemoryModelDeviceScope" ptr)
       <*> peek (offset @"vulkanMemoryModelAvailabilityVisibilityChains" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"vulkanMemoryModel" ptr val
    pokeField @"vulkanMemoryModelDeviceScope" ptr val
    pokeField @"vulkanMemoryModelAvailabilityVisibilityChains" ptr val

instance Offset "sType" VkPhysicalDeviceVulkanMemoryModelFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceVulkanMemoryModelFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceVulkanMemoryModelFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceVulkanMemoryModelFeatures, pNext}

instance Offset "vulkanMemoryModel" VkPhysicalDeviceVulkanMemoryModelFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceVulkanMemoryModelFeatures, vulkanMemoryModel}

instance Offset "vulkanMemoryModelDeviceScope" VkPhysicalDeviceVulkanMemoryModelFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceVulkanMemoryModelFeatures, vulkanMemoryModelDeviceScope}

instance Offset "vulkanMemoryModelAvailabilityVisibilityChains" VkPhysicalDeviceVulkanMemoryModelFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceVulkanMemoryModelFeatures, vulkanMemoryModelAvailabilityVisibilityChains}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVulkanMemoryModelFeatures where

#endif