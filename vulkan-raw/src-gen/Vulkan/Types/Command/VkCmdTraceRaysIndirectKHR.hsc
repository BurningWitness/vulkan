{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Command.VkCmdTraceRaysIndirectKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkStridedDeviceAddressRegionKHR
import Vulkan.Types.VkFun



type VkCmdTraceRaysIndirectKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkStridedDeviceAddressRegionKHR -- ^ pRaygenShaderBindingTable
       -> Ptr VkStridedDeviceAddressRegionKHR -- ^ pMissShaderBindingTable
       -> Ptr VkStridedDeviceAddressRegionKHR -- ^ pHitShaderBindingTable
       -> Ptr VkStridedDeviceAddressRegionKHR -- ^ pCallableShaderBindingTable
       -> VkDeviceAddress -- ^ indirectDeviceAddress
       -> IO ()

vkFunCmdTraceRaysIndirectKHR :: VkFun VkCmdTraceRaysIndirectKHR
vkFunCmdTraceRaysIndirectKHR = VkFun (Ptr ("vkCmdTraceRaysIndirectKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdTraceRaysIndirectKHR where

#endif