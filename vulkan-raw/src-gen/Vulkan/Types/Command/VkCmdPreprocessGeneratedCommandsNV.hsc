{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Command.VkCmdPreprocessGeneratedCommandsNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkGeneratedCommandsInfoNV
import Vulkan.Types.VkFun



type VkCmdPreprocessGeneratedCommandsNV =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkGeneratedCommandsInfoNV -- ^ pGeneratedCommandsInfo
       -> IO ()

vkFunCmdPreprocessGeneratedCommandsNV :: VkFun VkCmdPreprocessGeneratedCommandsNV
vkFunCmdPreprocessGeneratedCommandsNV = VkFun (Ptr ("vkCmdPreprocessGeneratedCommandsNV\0"##))

#else

module Vulkan.Types.Command.VkCmdPreprocessGeneratedCommandsNV where

#endif