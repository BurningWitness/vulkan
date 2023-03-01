{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Command.VkCmdTraceRaysNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdTraceRaysNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ raygenShaderBindingTableBuffer
       -> VkDeviceSize -- ^ raygenShaderBindingOffset
       -> VkBuffer -- ^ missShaderBindingTableBuffer
       -> VkDeviceSize -- ^ missShaderBindingOffset
       -> VkDeviceSize -- ^ missShaderBindingStride
       -> VkBuffer -- ^ hitShaderBindingTableBuffer
       -> VkDeviceSize -- ^ hitShaderBindingOffset
       -> VkDeviceSize -- ^ hitShaderBindingStride
       -> VkBuffer -- ^ callableShaderBindingTableBuffer
       -> VkDeviceSize -- ^ callableShaderBindingOffset
       -> VkDeviceSize -- ^ callableShaderBindingStride
       -> #{type uint32_t} -- ^ width
       -> #{type uint32_t} -- ^ height
       -> #{type uint32_t} -- ^ depth
       -> IO ()

vkFunCmdTraceRaysNV :: VkFun VkCmdTraceRaysNV
vkFunCmdTraceRaysNV = VkFun (Ptr ("vkCmdTraceRaysNV\0"##))

#else

module Vulkan.Types.Command.VkCmdTraceRaysNV where

#endif