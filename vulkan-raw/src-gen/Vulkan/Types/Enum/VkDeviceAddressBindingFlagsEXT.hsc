{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceAddressBindingFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_device_address_binding_report
type VkDeviceAddressBindingFlagsEXT = VkFlags
#endif