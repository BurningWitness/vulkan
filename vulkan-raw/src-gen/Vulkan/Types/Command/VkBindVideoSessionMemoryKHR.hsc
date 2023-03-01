{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Command.VkBindVideoSessionMemoryKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBindVideoSessionMemoryInfoKHR
import Vulkan.Types.VkFun



type VkBindVideoSessionMemoryKHR =
          VkDevice -- ^ device
       -> VkVideoSessionKHR -- ^ videoSession
       -> #{type uint32_t} -- ^ bindSessionMemoryInfoCount
       -> Ptr VkBindVideoSessionMemoryInfoKHR -- ^ pBindSessionMemoryInfos
       -> IO VkResult

vkFunBindVideoSessionMemoryKHR :: VkFun VkBindVideoSessionMemoryKHR
vkFunBindVideoSessionMemoryKHR = VkFun (Ptr ("vkBindVideoSessionMemoryKHR\0"##))

#else

module Vulkan.Types.Command.VkBindVideoSessionMemoryKHR where

#endif