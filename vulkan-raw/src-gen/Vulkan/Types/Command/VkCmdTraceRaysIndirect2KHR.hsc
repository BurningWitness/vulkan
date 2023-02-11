{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_maintenance1 && VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Command.VkCmdTraceRaysIndirect2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdTraceRaysIndirect2KHR =
          VkCommandBuffer -- ^ commandBuffer
       -> VkDeviceAddress -- ^ indirectDeviceAddress
       -> IO ()

vkFunCmdTraceRaysIndirect2KHR :: VkFun VkCmdTraceRaysIndirect2KHR
vkFunCmdTraceRaysIndirect2KHR = VkFun (Ptr ("vkCmdTraceRaysIndirect2KHR\0"##))

#else

module Vulkan.Types.Command.VkCmdTraceRaysIndirect2KHR where

#endif