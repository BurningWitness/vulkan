{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Command.VkGetRayTracingShaderGroupStackSizeKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkShaderGroupShaderKHR
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetRayTracingShaderGroupStackSizeKHR =
          VkDevice -- ^ device
       -> VkPipeline -- ^ pipeline
       -> #{type uint32_t} -- ^ group
       -> VkShaderGroupShaderKHR -- ^ groupShader
       -> IO VkDeviceSize

vkFunGetRayTracingShaderGroupStackSizeKHR :: VkFun VkGetRayTracingShaderGroupStackSizeKHR
vkFunGetRayTracingShaderGroupStackSizeKHR = VkFun (Ptr ("vkGetRayTracingShaderGroupStackSizeKHR\0"##))

#else

module Vulkan.Types.Command.VkGetRayTracingShaderGroupStackSizeKHR where

#endif