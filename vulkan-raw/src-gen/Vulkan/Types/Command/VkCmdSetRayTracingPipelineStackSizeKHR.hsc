{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Command.VkCmdSetRayTracingPipelineStackSizeKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetRayTracingPipelineStackSizeKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ pipelineStackSize
       -> IO ()

vkFunCmdSetRayTracingPipelineStackSizeKHR :: VkFun VkCmdSetRayTracingPipelineStackSizeKHR
vkFunCmdSetRayTracingPipelineStackSizeKHR = VkFun (Ptr ("vkCmdSetRayTracingPipelineStackSizeKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdSetRayTracingPipelineStackSizeKHR where

#endif