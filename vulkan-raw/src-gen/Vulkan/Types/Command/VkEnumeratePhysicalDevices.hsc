{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkEnumeratePhysicalDevices where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkEnumeratePhysicalDevices =
          VkInstance -- ^ instance
       -> Ptr #{type uint32_t} -- ^ pPhysicalDeviceCount
       -> Ptr VkPhysicalDevice -- ^ pPhysicalDevices
       -> IO VkResult

vkFunEnumeratePhysicalDevices :: VkFun VkEnumeratePhysicalDevices
vkFunEnumeratePhysicalDevices = VkFun (Ptr ("vkEnumeratePhysicalDevices\0"##))

foreign import CALLCV "vulkan/vulkan.h vkEnumeratePhysicalDevices"
  vkEnumeratePhysicalDevices
    :: VkEnumeratePhysicalDevices

foreign import CALLCV unsafe "vulkan/vulkan.h vkEnumeratePhysicalDevices"
  vkEnumeratePhysicalDevicesUnsafe
    :: VkEnumeratePhysicalDevices