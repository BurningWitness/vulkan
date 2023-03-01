{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Command.VkCmdTraceRaysKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkStridedDeviceAddressRegionKHR
import Vulkan.Types.VkFun



type VkCmdTraceRaysKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkStridedDeviceAddressRegionKHR -- ^ pRaygenShaderBindingTable
       -> Ptr VkStridedDeviceAddressRegionKHR -- ^ pMissShaderBindingTable
       -> Ptr VkStridedDeviceAddressRegionKHR -- ^ pHitShaderBindingTable
       -> Ptr VkStridedDeviceAddressRegionKHR -- ^ pCallableShaderBindingTable
       -> #{type uint32_t} -- ^ width
       -> #{type uint32_t} -- ^ height
       -> #{type uint32_t} -- ^ depth
       -> IO ()

vkFunCmdTraceRaysKHR :: VkFun VkCmdTraceRaysKHR
vkFunCmdTraceRaysKHR = VkFun (Ptr ("vkCmdTraceRaysKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdTraceRaysKHR where

#endif