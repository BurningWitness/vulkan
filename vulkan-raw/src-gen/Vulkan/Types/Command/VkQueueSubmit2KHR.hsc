{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Command.VkQueueSubmit2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSubmitInfo2
import Vulkan.Types.VkFun



type VkQueueSubmit2KHR =
          VkQueue -- ^ queue
       -> #{type uint32_t} -- ^ submitCount
       -> Ptr VkSubmitInfo2 -- ^ pSubmits
       -> VkFence -- ^ fence
       -> IO VkResult

vkFunQueueSubmit2KHR :: VkFun VkQueueSubmit2KHR
vkFunQueueSubmit2KHR = VkFun (Ptr ("vkQueueSubmit2KHR\0"##))

#else

module Vulkan.Types.Command.VkQueueSubmit2KHR where

#endif