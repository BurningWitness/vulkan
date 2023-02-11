{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceFaultAddressTypeEXT where

import Data.Int



#if VK_EXT_device_fault
type VkDeviceFaultAddressTypeEXT = #{type int}
#endif

#if VK_EXT_device_fault
-- | Currently unused
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_NONE_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_NONE_EXT = 0
#endif

#if VK_EXT_device_fault
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_READ_INVALID_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_READ_INVALID_EXT = 1
#endif

#if VK_EXT_device_fault
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_WRITE_INVALID_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_WRITE_INVALID_EXT = 2
#endif

#if VK_EXT_device_fault
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_EXECUTE_INVALID_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_EXECUTE_INVALID_EXT = 3
#endif

#if VK_EXT_device_fault
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_UNKNOWN_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_UNKNOWN_EXT = 4
#endif

#if VK_EXT_device_fault
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_INVALID_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_INVALID_EXT = 5
#endif

#if VK_EXT_device_fault
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_FAULT_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_FAULT_ADDRESS_TYPE_INSTRUCTION_POINTER_FAULT_EXT = 6
#endif