{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_deferred_host_operations

module Vulkan.Types.Command.VkCreateDeferredOperationKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkCreateDeferredOperationKHR =
          VkDevice -- ^ device
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkDeferredOperationKHR -- ^ pDeferredOperation
       -> IO VkResult

vkFunCreateDeferredOperationKHR :: VkFun VkCreateDeferredOperationKHR
vkFunCreateDeferredOperationKHR = VkFun (Ptr ("vkCreateDeferredOperationKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateDeferredOperationKHR where

#endif