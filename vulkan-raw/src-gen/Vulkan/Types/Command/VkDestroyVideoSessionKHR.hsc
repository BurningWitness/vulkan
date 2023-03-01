{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Command.VkDestroyVideoSessionKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyVideoSessionKHR =
          VkDevice -- ^ device
       -> VkVideoSessionKHR -- ^ videoSession
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyVideoSessionKHR :: VkFun VkDestroyVideoSessionKHR
vkFunDestroyVideoSessionKHR = VkFun (Ptr ("vkDestroyVideoSessionKHR\0"##))

#else

module Vulkan.Types.Command.VkDestroyVideoSessionKHR where

#endif