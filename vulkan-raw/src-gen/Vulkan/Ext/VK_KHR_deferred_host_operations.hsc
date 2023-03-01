{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_deferred_host_operations

module Vulkan.Ext.VK_KHR_deferred_host_operations
  ( pattern VK_KHR_DEFERRED_HOST_OPERATIONS_SPEC_VERSION
  , pattern VK_KHR_DEFERRED_HOST_OPERATIONS_EXTENSION_NAME
  , pattern VK_OBJECT_TYPE_DEFERRED_OPERATION_KHR
  , VkDeferredOperationKHR_T
  , VkDeferredOperationKHR
  , VkCreateDeferredOperationKHR
  , vkFunCreateDeferredOperationKHR
  , VkDestroyDeferredOperationKHR
  , vkFunDestroyDeferredOperationKHR
  , VkGetDeferredOperationMaxConcurrencyKHR
  , vkFunGetDeferredOperationMaxConcurrencyKHR
  , VkGetDeferredOperationResultKHR
  , vkFunGetDeferredOperationResultKHR
  , VkDeferredOperationJoinKHR
  , vkFunDeferredOperationJoinKHR
  , pattern VK_THREAD_IDLE_KHR
  , pattern VK_THREAD_DONE_KHR
  , pattern VK_OPERATION_DEFERRED_KHR
  , pattern VK_OPERATION_NOT_DEFERRED_KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCreateDeferredOperationKHR
import Vulkan.Types.Command.VkDeferredOperationJoinKHR
import Vulkan.Types.Command.VkDestroyDeferredOperationKHR
import Vulkan.Types.Command.VkGetDeferredOperationMaxConcurrencyKHR
import Vulkan.Types.Command.VkGetDeferredOperationResultKHR
import Vulkan.Types.VkFun



pattern VK_KHR_DEFERRED_HOST_OPERATIONS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_DEFERRED_HOST_OPERATIONS_SPEC_VERSION = 4

pattern VK_KHR_DEFERRED_HOST_OPERATIONS_EXTENSION_NAME :: CString
pattern VK_KHR_DEFERRED_HOST_OPERATIONS_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_DEFERRED_HOST_OPERATIONS_EXTENSION_NAME = Ptr ("VK_KHR_deferred_host_operations\0"##)

#else

module Vulkan.Ext.VK_KHR_deferred_host_operations where

#endif