{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_diagnostic_checkpoints

module Vulkan.Types.Command.VkCmdSetCheckpointNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetCheckpointNV =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr () -- ^ pCheckpointMarker
       -> IO ()

vkFunCmdSetCheckpointNV :: VkFun VkCmdSetCheckpointNV
vkFunCmdSetCheckpointNV = VkFun (Ptr ("vkCmdSetCheckpointNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetCheckpointNV where

#endif