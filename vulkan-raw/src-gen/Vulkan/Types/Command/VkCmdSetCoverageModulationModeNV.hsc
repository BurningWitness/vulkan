{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetCoverageModulationModeNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCoverageModulationModeNV
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetCoverageModulationModeNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkCoverageModulationModeNV -- ^ coverageModulationMode
       -> IO ()

vkFunCmdSetCoverageModulationModeNV :: VkFun VkCmdSetCoverageModulationModeNV
vkFunCmdSetCoverageModulationModeNV = VkFun (Ptr ("vkCmdSetCoverageModulationModeNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetCoverageModulationModeNV where

#endif