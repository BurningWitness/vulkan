{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance4

module Vulkan.Types.Command.VkGetDeviceImageSparseMemoryRequirementsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceImageMemoryRequirements
import Vulkan.Types.Struct.VkSparseImageMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetDeviceImageSparseMemoryRequirementsKHR =
          VkDevice -- ^ device
       -> Ptr VkDeviceImageMemoryRequirements -- ^ pInfo
       -> Ptr #{type uint32_t} -- ^ pSparseMemoryRequirementCount
       -> Ptr VkSparseImageMemoryRequirements2 -- ^ pSparseMemoryRequirements
       -> IO ()

vkFunGetDeviceImageSparseMemoryRequirementsKHR :: VkFun VkGetDeviceImageSparseMemoryRequirementsKHR
vkFunGetDeviceImageSparseMemoryRequirementsKHR = VkFun (Ptr ("vkGetDeviceImageSparseMemoryRequirementsKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDeviceImageSparseMemoryRequirementsKHR where

#endif