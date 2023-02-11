{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceAddressBindingFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_device_address_binding_report
type VkDeviceAddressBindingFlagBitsEXT = VkFlags
#endif

#if VK_EXT_device_address_binding_report
pattern VK_DEVICE_ADDRESS_BINDING_INTERNAL_OBJECT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_ADDRESS_BINDING_INTERNAL_OBJECT_BIT_EXT = 1
#endif