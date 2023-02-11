{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_clip_space_w_scaling

module Vulkan.Types.Command.VkCmdSetViewportWScalingNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkViewportWScalingNV
import Vulkan.Types.VkFun



type VkCmdSetViewportWScalingNV =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstViewport
       -> #{type uint32_t} -- ^ viewportCount
       -> Ptr VkViewportWScalingNV -- ^ pViewportWScalings
       -> IO ()

vkFunCmdSetViewportWScalingNV :: VkFun VkCmdSetViewportWScalingNV
vkFunCmdSetViewportWScalingNV = VkFun (Ptr ("vkCmdSetViewportWScalingNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetViewportWScalingNV where

#endif