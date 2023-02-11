{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_deferred_host_operations

module Vulkan.Types.Command.VkGetDeferredOperationMaxConcurrencyKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDeferredOperationMaxConcurrencyKHR =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ operation
       -> IO #{type uint32_t}

vkFunGetDeferredOperationMaxConcurrencyKHR :: VkFun VkGetDeferredOperationMaxConcurrencyKHR
vkFunGetDeferredOperationMaxConcurrencyKHR = VkFun (Ptr ("vkGetDeferredOperationMaxConcurrencyKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDeferredOperationMaxConcurrencyKHR where

#endif