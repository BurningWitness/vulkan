{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Command.VkCreateVideoSessionKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkVideoSessionCreateInfoKHR
import Vulkan.Types.VkFun



type VkCreateVideoSessionKHR =
          VkDevice -- ^ device
       -> Ptr VkVideoSessionCreateInfoKHR -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkVideoSessionKHR -- ^ pVideoSession
       -> IO VkResult

vkFunCreateVideoSessionKHR :: VkFun VkCreateVideoSessionKHR
vkFunCreateVideoSessionKHR = VkFun (Ptr ("vkCreateVideoSessionKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateVideoSessionKHR where

#endif