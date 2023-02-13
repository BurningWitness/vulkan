{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_vulkan_memory_model

module Vulkan.Types.Struct.VkPhysicalDeviceVulkanMemoryModelFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVulkanMemoryModelFeaturesKHR" #-} VkPhysicalDeviceVulkanMemoryModelFeaturesKHR =
       VkPhysicalDeviceVulkanMemoryModelFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , vulkanMemoryModel :: VkBool32
         , vulkanMemoryModelDeviceScope :: VkBool32
         , vulkanMemoryModelAvailabilityVisibilityChains :: VkBool32
         }

instance Storable VkPhysicalDeviceVulkanMemoryModelFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceVulkanMemoryModelFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceVulkanMemoryModelFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceVulkanMemoryModelFeaturesKHR
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

instance Offset "sType" VkPhysicalDeviceVulkanMemoryModelFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVulkanMemoryModelFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceVulkanMemoryModelFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVulkanMemoryModelFeaturesKHR, pNext}

instance Offset "vulkanMemoryModel" VkPhysicalDeviceVulkanMemoryModelFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVulkanMemoryModelFeaturesKHR, vulkanMemoryModel}

instance Offset "vulkanMemoryModelDeviceScope" VkPhysicalDeviceVulkanMemoryModelFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVulkanMemoryModelFeaturesKHR, vulkanMemoryModelDeviceScope}

instance Offset "vulkanMemoryModelAvailabilityVisibilityChains" VkPhysicalDeviceVulkanMemoryModelFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceVulkanMemoryModelFeaturesKHR, vulkanMemoryModelAvailabilityVisibilityChains}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVulkanMemoryModelFeaturesKHR where

#endif