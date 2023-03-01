{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pageable_device_local_memory

module Vulkan.Types.Command.VkSetDeviceMemoryPriorityEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkSetDeviceMemoryPriorityEXT =
          VkDevice -- ^ device
       -> VkDeviceMemory -- ^ memory
       -> #{type float} -- ^ priority
       -> IO ()

vkFunSetDeviceMemoryPriorityEXT :: VkFun VkSetDeviceMemoryPriorityEXT
vkFunSetDeviceMemoryPriorityEXT = VkFun (Ptr ("vkSetDeviceMemoryPriorityEXT\0"##))

#else

module Vulkan.Types.Command.VkSetDeviceMemoryPriorityEXT where

#endif