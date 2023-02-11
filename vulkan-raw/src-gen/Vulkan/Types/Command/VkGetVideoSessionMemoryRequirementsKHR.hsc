{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Command.VkGetVideoSessionMemoryRequirementsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVideoSessionMemoryRequirementsKHR
import Vulkan.Types.VkFun



type VkGetVideoSessionMemoryRequirementsKHR =
          VkDevice -- ^ device
       -> VkVideoSessionKHR -- ^ videoSession
       -> Ptr #{type uint32_t} -- ^ pMemoryRequirementsCount
       -> Ptr VkVideoSessionMemoryRequirementsKHR -- ^ pMemoryRequirements
       -> IO VkResult

vkFunGetVideoSessionMemoryRequirementsKHR :: VkFun VkGetVideoSessionMemoryRequirementsKHR
vkFunGetVideoSessionMemoryRequirementsKHR = VkFun (Ptr ("vkGetVideoSessionMemoryRequirementsKHR\0"##))

#else

module Vulkan.Types.Command.VkGetVideoSessionMemoryRequirementsKHR where

#endif