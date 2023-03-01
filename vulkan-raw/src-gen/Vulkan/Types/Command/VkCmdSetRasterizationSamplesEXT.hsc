{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetRasterizationSamplesEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetRasterizationSamplesEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkSampleCountFlagBits -- ^ rasterizationSamples
       -> IO ()

vkFunCmdSetRasterizationSamplesEXT :: VkFun VkCmdSetRasterizationSamplesEXT
vkFunCmdSetRasterizationSamplesEXT = VkFun (Ptr ("vkCmdSetRasterizationSamplesEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetRasterizationSamplesEXT where

#endif