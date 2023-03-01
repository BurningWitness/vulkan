{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetCoverageModulationTableEnableNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetCoverageModulationTableEnableNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ coverageModulationTableEnable
       -> IO ()

vkFunCmdSetCoverageModulationTableEnableNV :: VkFun VkCmdSetCoverageModulationTableEnableNV
vkFunCmdSetCoverageModulationTableEnableNV = VkFun (Ptr ("vkCmdSetCoverageModulationTableEnableNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetCoverageModulationTableEnableNV where

#endif