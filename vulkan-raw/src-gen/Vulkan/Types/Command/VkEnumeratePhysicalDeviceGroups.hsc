{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkEnumeratePhysicalDeviceGroups where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceGroupProperties
import Vulkan.Types.VkFun



type VkEnumeratePhysicalDeviceGroups =
          VkInstance -- ^ instance
       -> Ptr #{type uint32_t} -- ^ pPhysicalDeviceGroupCount
       -> Ptr VkPhysicalDeviceGroupProperties -- ^ pPhysicalDeviceGroupProperties
       -> IO VkResult

vkFunEnumeratePhysicalDeviceGroups :: VkFun VkEnumeratePhysicalDeviceGroups
vkFunEnumeratePhysicalDeviceGroups = VkFun (Ptr ("vkEnumeratePhysicalDeviceGroups\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkEnumeratePhysicalDeviceGroups"
  vkEnumeratePhysicalDeviceGroups
    :: VkEnumeratePhysicalDeviceGroups

foreign import CALLCV unsafe "vulkan/vulkan.h vkEnumeratePhysicalDeviceGroups"
  vkEnumeratePhysicalDeviceGroupsUnsafe
    :: VkEnumeratePhysicalDeviceGroups
##endif

#else

module Vulkan.Types.Command.VkEnumeratePhysicalDeviceGroups where

#endif