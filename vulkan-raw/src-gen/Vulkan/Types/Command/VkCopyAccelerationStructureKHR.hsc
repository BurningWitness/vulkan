{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkCopyAccelerationStructureKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyAccelerationStructureInfoKHR
import Vulkan.Types.VkFun



type VkCopyAccelerationStructureKHR =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ deferredOperation
       -> Ptr VkCopyAccelerationStructureInfoKHR -- ^ pInfo
       -> IO VkResult

vkFunCopyAccelerationStructureKHR :: VkFun VkCopyAccelerationStructureKHR
vkFunCopyAccelerationStructureKHR = VkFun (Ptr ("vkCopyAccelerationStructureKHR\0"##))

#else

module Vulkan.Types.Command.VkCopyAccelerationStructureKHR where

#endif