{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_fault

module Vulkan.Types.Command.VkGetDeviceFaultInfoEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceFaultCountsEXT
import Vulkan.Types.Struct.VkDeviceFaultInfoEXT
import Vulkan.Types.VkFun



type VkGetDeviceFaultInfoEXT =
          VkDevice -- ^ device
       -> Ptr VkDeviceFaultCountsEXT -- ^ pFaultCounts
       -> Ptr VkDeviceFaultInfoEXT -- ^ pFaultInfo
       -> IO VkResult

vkFunGetDeviceFaultInfoEXT :: VkFun VkGetDeviceFaultInfoEXT
vkFunGetDeviceFaultInfoEXT = VkFun (Ptr ("vkGetDeviceFaultInfoEXT\0"##))

#else

module Vulkan.Types.Command.VkGetDeviceFaultInfoEXT where

#endif