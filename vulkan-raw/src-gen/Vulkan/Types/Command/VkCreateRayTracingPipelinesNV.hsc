{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Command.VkCreateRayTracingPipelinesNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkRayTracingPipelineCreateInfoNV
import Vulkan.Types.VkFun



type VkCreateRayTracingPipelinesNV =
          VkDevice -- ^ device
       -> VkPipelineCache -- ^ pipelineCache
       -> #{type uint32_t} -- ^ createInfoCount
       -> Ptr VkRayTracingPipelineCreateInfoNV -- ^ pCreateInfos
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkPipeline -- ^ pPipelines
       -> IO VkResult

vkFunCreateRayTracingPipelinesNV :: VkFun VkCreateRayTracingPipelinesNV
vkFunCreateRayTracingPipelinesNV = VkFun (Ptr ("vkCreateRayTracingPipelinesNV\0"##))

#else

module Vulkan.Types.Command.VkCreateRayTracingPipelinesNV where

#endif