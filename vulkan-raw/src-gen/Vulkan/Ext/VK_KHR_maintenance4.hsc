{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance4

module Vulkan.Ext.VK_KHR_maintenance4
  ( pattern VK_KHR_MAINTENANCE_4_SPEC_VERSION
  , pattern VK_KHR_MAINTENANCE_4_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_DEVICE_BUFFER_MEMORY_REQUIREMENTS_KHR
  , pattern VK_STRUCTURE_TYPE_DEVICE_IMAGE_MEMORY_REQUIREMENTS_KHR
  , pattern VK_IMAGE_ASPECT_NONE_KHR
  , VkPhysicalDeviceMaintenance4FeaturesKHR
  , VkPhysicalDeviceMaintenance4PropertiesKHR
  , VkDeviceBufferMemoryRequirementsKHR
  , VkDeviceImageMemoryRequirementsKHR
  , VkGetDeviceBufferMemoryRequirementsKHR
  , vkFunGetDeviceBufferMemoryRequirementsKHR
  , VkGetDeviceImageMemoryRequirementsKHR
  , vkFunGetDeviceImageMemoryRequirementsKHR
  , VkGetDeviceImageSparseMemoryRequirementsKHR
  , vkFunGetDeviceImageSparseMemoryRequirementsKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkImageAspectFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDeviceBufferMemoryRequirementsKHR
import Vulkan.Types.Struct.VkDeviceImageMemoryRequirementsKHR
import Vulkan.Types.Struct.VkPhysicalDeviceMaintenance4FeaturesKHR
import Vulkan.Types.Struct.VkPhysicalDeviceMaintenance4PropertiesKHR
import Vulkan.Types.Command.VkGetDeviceBufferMemoryRequirementsKHR
import Vulkan.Types.Command.VkGetDeviceImageMemoryRequirementsKHR
import Vulkan.Types.Command.VkGetDeviceImageSparseMemoryRequirementsKHR
import Vulkan.Types.VkFun



pattern VK_KHR_MAINTENANCE_4_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_MAINTENANCE_4_SPEC_VERSION = 2

pattern VK_KHR_MAINTENANCE_4_EXTENSION_NAME :: CString
pattern VK_KHR_MAINTENANCE_4_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_MAINTENANCE_4_EXTENSION_NAME = Ptr ("VK_KHR_maintenance4\0"##)

#else

module Vulkan.Ext.VK_KHR_maintenance4 where

#endif