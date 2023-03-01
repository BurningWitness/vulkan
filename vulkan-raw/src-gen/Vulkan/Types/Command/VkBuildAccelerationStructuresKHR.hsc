{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkBuildAccelerationStructuresKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureBuildGeometryInfoKHR
import Vulkan.Types.Struct.VkAccelerationStructureBuildRangeInfoKHR
import Vulkan.Types.VkFun



type VkBuildAccelerationStructuresKHR =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ deferredOperation
       -> #{type uint32_t} -- ^ infoCount
       -> Ptr VkAccelerationStructureBuildGeometryInfoKHR -- ^ pInfos
       -> Ptr (Ptr VkAccelerationStructureBuildRangeInfoKHR) -- ^ ppBuildRangeInfos
       -> IO VkResult

vkFunBuildAccelerationStructuresKHR :: VkFun VkBuildAccelerationStructuresKHR
vkFunBuildAccelerationStructuresKHR = VkFun (Ptr ("vkBuildAccelerationStructuresKHR\0"##))

#else

module Vulkan.Types.Command.VkBuildAccelerationStructuresKHR where

#endif