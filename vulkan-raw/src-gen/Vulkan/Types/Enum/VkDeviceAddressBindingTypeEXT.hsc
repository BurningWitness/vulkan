{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceAddressBindingTypeEXT where

import Data.Int



#if VK_EXT_device_address_binding_report
type VkDeviceAddressBindingTypeEXT = #{type int}
#endif

#if VK_EXT_device_address_binding_report
pattern VK_DEVICE_ADDRESS_BINDING_TYPE_BIND_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_ADDRESS_BINDING_TYPE_BIND_EXT = 0
#endif

#if VK_EXT_device_address_binding_report
pattern VK_DEVICE_ADDRESS_BINDING_TYPE_UNBIND_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_ADDRESS_BINDING_TYPE_UNBIND_EXT = 1
#endif