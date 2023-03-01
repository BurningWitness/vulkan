{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Command.VkDestroyVideoSessionParametersKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyVideoSessionParametersKHR =
          VkDevice -- ^ device
       -> VkVideoSessionParametersKHR -- ^ videoSessionParameters
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyVideoSessionParametersKHR :: VkFun VkDestroyVideoSessionParametersKHR
vkFunDestroyVideoSessionParametersKHR = VkFun (Ptr ("vkDestroyVideoSessionParametersKHR\0"##))

#else

module Vulkan.Types.Command.VkDestroyVideoSessionParametersKHR where

#endif