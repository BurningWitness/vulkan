{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkCopyMemoryToAccelerationStructureKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyMemoryToAccelerationStructureInfoKHR
import Vulkan.Types.VkFun



type VkCopyMemoryToAccelerationStructureKHR =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ deferredOperation
       -> Ptr VkCopyMemoryToAccelerationStructureInfoKHR -- ^ pInfo
       -> IO VkResult

vkFunCopyMemoryToAccelerationStructureKHR :: VkFun VkCopyMemoryToAccelerationStructureKHR
vkFunCopyMemoryToAccelerationStructureKHR = VkFun (Ptr ("vkCopyMemoryToAccelerationStructureKHR\0"##))

#else

module Vulkan.Types.Command.VkCopyMemoryToAccelerationStructureKHR where

#endif