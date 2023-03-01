{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sample_locations

module Vulkan.Types.Command.VkGetPhysicalDeviceMultisamplePropertiesEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMultisamplePropertiesEXT
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceMultisamplePropertiesEXT =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkSampleCountFlagBits -- ^ samples
       -> Ptr VkMultisamplePropertiesEXT -- ^ pMultisampleProperties
       -> IO ()

vkFunGetPhysicalDeviceMultisamplePropertiesEXT :: VkFun VkGetPhysicalDeviceMultisamplePropertiesEXT
vkFunGetPhysicalDeviceMultisamplePropertiesEXT = VkFun (Ptr ("vkGetPhysicalDeviceMultisamplePropertiesEXT\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceMultisamplePropertiesEXT where

#endif