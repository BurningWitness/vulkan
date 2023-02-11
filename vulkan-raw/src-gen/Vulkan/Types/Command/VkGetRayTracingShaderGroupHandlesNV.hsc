#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Command.VkGetRayTracingShaderGroupHandlesNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkGetRayTracingShaderGroupHandlesKHR
import Vulkan.Types.VkFun



type VkGetRayTracingShaderGroupHandlesNV = VkGetRayTracingShaderGroupHandlesKHR

vkFunGetRayTracingShaderGroupHandlesNV
  :: VkFun VkGetRayTracingShaderGroupHandlesNV
vkFunGetRayTracingShaderGroupHandlesNV = vkFunGetRayTracingShaderGroupHandlesKHR


#else

module Vulkan.Types.Command.VkGetRayTracingShaderGroupHandlesNV where

#endif