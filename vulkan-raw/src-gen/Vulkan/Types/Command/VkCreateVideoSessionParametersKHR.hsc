{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Command.VkCreateVideoSessionParametersKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkVideoSessionParametersCreateInfoKHR
import Vulkan.Types.VkFun



type VkCreateVideoSessionParametersKHR =
          VkDevice -- ^ device
       -> Ptr VkVideoSessionParametersCreateInfoKHR -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkVideoSessionParametersKHR -- ^ pVideoSessionParameters
       -> IO VkResult

vkFunCreateVideoSessionParametersKHR :: VkFun VkCreateVideoSessionParametersKHR
vkFunCreateVideoSessionParametersKHR = VkFun (Ptr ("vkCreateVideoSessionParametersKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateVideoSessionParametersKHR where

#endif