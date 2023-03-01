{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_deferred_host_operations

module Vulkan.Types.Command.VkDestroyDeferredOperationKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyDeferredOperationKHR =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ operation
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyDeferredOperationKHR :: VkFun VkDestroyDeferredOperationKHR
vkFunDestroyDeferredOperationKHR = VkFun (Ptr ("vkDestroyDeferredOperationKHR\0"##))

#else

module Vulkan.Types.Command.VkDestroyDeferredOperationKHR where

#endif