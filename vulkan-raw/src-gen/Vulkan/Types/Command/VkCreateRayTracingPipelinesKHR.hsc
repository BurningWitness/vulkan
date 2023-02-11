{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Command.VkCreateRayTracingPipelinesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkRayTracingPipelineCreateInfoKHR
import Vulkan.Types.VkFun



type VkCreateRayTracingPipelinesKHR =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ deferredOperation
       -> VkPipelineCache -- ^ pipelineCache
       -> #{type uint32_t} -- ^ createInfoCount
       -> Ptr VkRayTracingPipelineCreateInfoKHR -- ^ pCreateInfos
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkPipeline -- ^ pPipelines
       -> IO VkResult

vkFunCreateRayTracingPipelinesKHR :: VkFun VkCreateRayTracingPipelinesKHR
vkFunCreateRayTracingPipelinesKHR = VkFun (Ptr ("vkCreateRayTracingPipelinesKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateRayTracingPipelinesKHR where

#endif