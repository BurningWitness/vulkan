{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkCopyAccelerationStructureToMemoryKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyAccelerationStructureToMemoryInfoKHR
import Vulkan.Types.VkFun



type VkCopyAccelerationStructureToMemoryKHR =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ deferredOperation
       -> Ptr VkCopyAccelerationStructureToMemoryInfoKHR -- ^ pInfo
       -> IO VkResult

vkFunCopyAccelerationStructureToMemoryKHR :: VkFun VkCopyAccelerationStructureToMemoryKHR
vkFunCopyAccelerationStructureToMemoryKHR = VkFun (Ptr ("vkCopyAccelerationStructureToMemoryKHR\0"##))

#else

module Vulkan.Types.Command.VkCopyAccelerationStructureToMemoryKHR where

#endif