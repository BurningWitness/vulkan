{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Command.VkCmdExecuteGeneratedCommandsNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkGeneratedCommandsInfoNV
import Vulkan.Types.VkFun



type VkCmdExecuteGeneratedCommandsNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ isPreprocessed
       -> Ptr VkGeneratedCommandsInfoNV -- ^ pGeneratedCommandsInfo
       -> IO ()

vkFunCmdExecuteGeneratedCommandsNV :: VkFun VkCmdExecuteGeneratedCommandsNV
vkFunCmdExecuteGeneratedCommandsNV = VkFun (Ptr ("vkCmdExecuteGeneratedCommandsNV\0"##))

#else

module Vulkan.Types.Command.VkCmdExecuteGeneratedCommandsNV where

#endif