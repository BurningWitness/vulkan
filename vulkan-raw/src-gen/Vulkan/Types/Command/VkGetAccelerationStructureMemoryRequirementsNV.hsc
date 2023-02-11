{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Command.VkGetAccelerationStructureMemoryRequirementsNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureMemoryRequirementsInfoNV
import Vulkan.Types.Struct.VkMemoryRequirements2KHR
import Vulkan.Types.VkFun



type VkGetAccelerationStructureMemoryRequirementsNV =
          VkDevice -- ^ device
       -> Ptr VkAccelerationStructureMemoryRequirementsInfoNV -- ^ pInfo
       -> Ptr VkMemoryRequirements2KHR -- ^ pMemoryRequirements
       -> IO ()

vkFunGetAccelerationStructureMemoryRequirementsNV :: VkFun VkGetAccelerationStructureMemoryRequirementsNV
vkFunGetAccelerationStructureMemoryRequirementsNV = VkFun (Ptr ("vkGetAccelerationStructureMemoryRequirementsNV\0"##))

#else

module Vulkan.Types.Command.VkGetAccelerationStructureMemoryRequirementsNV where

#endif