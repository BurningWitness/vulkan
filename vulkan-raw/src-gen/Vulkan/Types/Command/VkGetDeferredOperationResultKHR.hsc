{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_deferred_host_operations

module Vulkan.Types.Command.VkGetDeferredOperationResultKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDeferredOperationResultKHR =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ operation
       -> IO VkResult

vkFunGetDeferredOperationResultKHR :: VkFun VkGetDeferredOperationResultKHR
vkFunGetDeferredOperationResultKHR = VkFun (Ptr ("vkGetDeferredOperationResultKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDeferredOperationResultKHR where

#endif