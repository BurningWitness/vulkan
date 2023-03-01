{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceFaultVendorBinaryHeaderVersionEXT where

import Data.Int



#if VK_EXT_device_fault
type VkDeviceFaultVendorBinaryHeaderVersionEXT = #{type int}
#endif

#if VK_EXT_device_fault
pattern VK_DEVICE_FAULT_VENDOR_BINARY_HEADER_VERSION_ONE_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_FAULT_VENDOR_BINARY_HEADER_VERSION_ONE_EXT = 1
#endif