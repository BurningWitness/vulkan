{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_driver_properties

module Vulkan.Ext.VK_KHR_driver_properties
  ( pattern VK_KHR_DRIVER_PROPERTIES_SPEC_VERSION
  , pattern VK_KHR_DRIVER_PROPERTIES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES_KHR
  , pattern VK_MAX_DRIVER_NAME_SIZE_KHR
  , pattern VK_MAX_DRIVER_INFO_SIZE_KHR
  , VkDriverIdKHR
  , pattern VK_DRIVER_ID_AMD_PROPRIETARY_KHR
  , pattern VK_DRIVER_ID_AMD_OPEN_SOURCE_KHR
  , pattern VK_DRIVER_ID_MESA_RADV_KHR
  , pattern VK_DRIVER_ID_NVIDIA_PROPRIETARY_KHR
  , pattern VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS_KHR
  , pattern VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA_KHR
  , pattern VK_DRIVER_ID_IMAGINATION_PROPRIETARY_KHR
  , pattern VK_DRIVER_ID_QUALCOMM_PROPRIETARY_KHR
  , pattern VK_DRIVER_ID_ARM_PROPRIETARY_KHR
  , pattern VK_DRIVER_ID_GOOGLE_SWIFTSHADER_KHR
  , pattern VK_DRIVER_ID_GGP_PROPRIETARY_KHR
  , pattern VK_DRIVER_ID_BROADCOM_PROPRIETARY_KHR
  , VkConformanceVersionKHR
  , VkPhysicalDeviceDriverPropertiesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Constant
import Vulkan.Types.Enum.VkDriverId
import Vulkan.Types.Enum.VkDriverIdKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkConformanceVersionKHR
import Vulkan.Types.Struct.VkPhysicalDeviceDriverPropertiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_DRIVER_PROPERTIES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_DRIVER_PROPERTIES_SPEC_VERSION = 1

pattern VK_KHR_DRIVER_PROPERTIES_EXTENSION_NAME :: CString
pattern VK_KHR_DRIVER_PROPERTIES_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_DRIVER_PROPERTIES_EXTENSION_NAME = Ptr ("VK_KHR_driver_properties\0"##)

#else

module Vulkan.Ext.VK_KHR_driver_properties where

#endif