{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Command.VkGetRayTracingCaptureReplayShaderGroupHandlesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetRayTracingCaptureReplayShaderGroupHandlesKHR =
          VkDevice -- ^ device
       -> VkPipeline -- ^ pipeline
       -> #{type uint32_t} -- ^ firstGroup
       -> #{type uint32_t} -- ^ groupCount
       -> #{type size_t} -- ^ dataSize
       -> Ptr () -- ^ pData
       -> IO VkResult

vkFunGetRayTracingCaptureReplayShaderGroupHandlesKHR :: VkFun VkGetRayTracingCaptureReplayShaderGroupHandlesKHR
vkFunGetRayTracingCaptureReplayShaderGroupHandlesKHR = VkFun (Ptr ("vkGetRayTracingCaptureReplayShaderGroupHandlesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetRayTracingCaptureReplayShaderGroupHandlesKHR where

#endif