{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_directfb_surface

module Vulkan.Types.Command.VkGetPhysicalDeviceDirectFBPresentationSupportEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceDirectFBPresentationSupportEXT =
          VkPhysicalDevice -- ^ physicalDevice
       -> #{type uint32_t} -- ^ queueFamilyIndex
       -> Ptr IDirectFB -- ^ dfb
       -> IO VkBool32

vkFunGetPhysicalDeviceDirectFBPresentationSupportEXT :: VkFun VkGetPhysicalDeviceDirectFBPresentationSupportEXT
vkFunGetPhysicalDeviceDirectFBPresentationSupportEXT = VkFun (Ptr ("vkGetPhysicalDeviceDirectFBPresentationSupportEXT\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceDirectFBPresentationSupportEXT where

#endif