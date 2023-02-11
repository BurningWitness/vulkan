{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Command.VkCmdBindPipelineShaderGroupNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBindPipelineShaderGroupNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineBindPoint -- ^ pipelineBindPoint
       -> VkPipeline -- ^ pipeline
       -> #{type uint32_t} -- ^ groupIndex
       -> IO ()

vkFunCmdBindPipelineShaderGroupNV :: VkFun VkCmdBindPipelineShaderGroupNV
vkFunCmdBindPipelineShaderGroupNV = VkFun (Ptr ("vkCmdBindPipelineShaderGroupNV\0"##))

#else

module Vulkan.Types.Command.VkCmdBindPipelineShaderGroupNV where

#endif