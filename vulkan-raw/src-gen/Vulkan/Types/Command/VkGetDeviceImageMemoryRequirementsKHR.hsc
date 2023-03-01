{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance4

module Vulkan.Types.Command.VkGetDeviceImageMemoryRequirementsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceImageMemoryRequirements
import Vulkan.Types.Struct.VkMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetDeviceImageMemoryRequirementsKHR =
          VkDevice -- ^ device
       -> Ptr VkDeviceImageMemoryRequirements -- ^ pInfo
       -> Ptr VkMemoryRequirements2 -- ^ pMemoryRequirements
       -> IO ()

vkFunGetDeviceImageMemoryRequirementsKHR :: VkFun VkGetDeviceImageMemoryRequirementsKHR
vkFunGetDeviceImageMemoryRequirementsKHR = VkFun (Ptr ("vkGetDeviceImageMemoryRequirementsKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDeviceImageMemoryRequirementsKHR where

#endif