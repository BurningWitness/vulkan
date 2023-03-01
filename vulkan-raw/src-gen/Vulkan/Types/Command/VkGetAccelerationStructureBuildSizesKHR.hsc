{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Command.VkGetAccelerationStructureBuildSizesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkAccelerationStructureBuildTypeKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureBuildGeometryInfoKHR
import Vulkan.Types.Struct.VkAccelerationStructureBuildSizesInfoKHR
import Vulkan.Types.VkFun



type VkGetAccelerationStructureBuildSizesKHR =
          VkDevice -- ^ device
       -> VkAccelerationStructureBuildTypeKHR -- ^ buildType
       -> Ptr VkAccelerationStructureBuildGeometryInfoKHR -- ^ pBuildInfo
       -> Ptr #{type uint32_t} -- ^ pMaxPrimitiveCounts
       -> Ptr VkAccelerationStructureBuildSizesInfoKHR -- ^ pSizeInfo
       -> IO ()

vkFunGetAccelerationStructureBuildSizesKHR :: VkFun VkGetAccelerationStructureBuildSizesKHR
vkFunGetAccelerationStructureBuildSizesKHR = VkFun (Ptr ("vkGetAccelerationStructureBuildSizesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetAccelerationStructureBuildSizesKHR where

#endif