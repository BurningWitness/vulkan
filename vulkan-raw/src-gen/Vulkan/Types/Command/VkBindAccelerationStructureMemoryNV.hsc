{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Command.VkBindAccelerationStructureMemoryNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBindAccelerationStructureMemoryInfoNV
import Vulkan.Types.VkFun



type VkBindAccelerationStructureMemoryNV =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ bindInfoCount
       -> Ptr VkBindAccelerationStructureMemoryInfoNV -- ^ pBindInfos
       -> IO VkResult

vkFunBindAccelerationStructureMemoryNV :: VkFun VkBindAccelerationStructureMemoryNV
vkFunBindAccelerationStructureMemoryNV = VkFun (Ptr ("vkBindAccelerationStructureMemoryNV\0"##))

#else

module Vulkan.Types.Command.VkBindAccelerationStructureMemoryNV where

#endif