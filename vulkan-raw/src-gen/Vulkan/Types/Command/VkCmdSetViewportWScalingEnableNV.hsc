{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetViewportWScalingEnableNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetViewportWScalingEnableNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ viewportWScalingEnable
       -> IO ()

vkFunCmdSetViewportWScalingEnableNV :: VkFun VkCmdSetViewportWScalingEnableNV
vkFunCmdSetViewportWScalingEnableNV = VkFun (Ptr ("vkCmdSetViewportWScalingEnableNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetViewportWScalingEnableNV where

#endif