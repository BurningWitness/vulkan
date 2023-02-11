{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Command.VkGetAccelerationStructureHandleNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetAccelerationStructureHandleNV =
          VkDevice -- ^ device
       -> VkAccelerationStructureNV -- ^ accelerationStructure
       -> #{type size_t} -- ^ dataSize
       -> Ptr () -- ^ pData
       -> IO VkResult

vkFunGetAccelerationStructureHandleNV :: VkFun VkGetAccelerationStructureHandleNV
vkFunGetAccelerationStructureHandleNV = VkFun (Ptr ("vkGetAccelerationStructureHandleNV\0"##))

#else

module Vulkan.Types.Command.VkGetAccelerationStructureHandleNV where

#endif