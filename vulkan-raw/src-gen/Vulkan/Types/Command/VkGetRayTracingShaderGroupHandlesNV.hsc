{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Command.VkGetRayTracingShaderGroupHandlesNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetRayTracingShaderGroupHandlesNV =
          VkDevice -- ^ device
       -> VkPipeline -- ^ pipeline
       -> #{type uint32_t} -- ^ firstGroup
       -> #{type uint32_t} -- ^ groupCount
       -> #{type size_t} -- ^ dataSize
       -> Ptr () -- ^ pData
       -> IO VkResult

vkFunGetRayTracingShaderGroupHandlesNV :: VkFun VkGetRayTracingShaderGroupHandlesNV
vkFunGetRayTracingShaderGroupHandlesNV = VkFun (Ptr ("vkGetRayTracingShaderGroupHandlesNV\0"##))

#else

module Vulkan.Types.Command.VkGetRayTracingShaderGroupHandlesNV where

#endif