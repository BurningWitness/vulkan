{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetCoverageModulationTableNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetCoverageModulationTableNV =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ coverageModulationTableCount
       -> Ptr #{type float} -- ^ pCoverageModulationTable
       -> IO ()

vkFunCmdSetCoverageModulationTableNV :: VkFun VkCmdSetCoverageModulationTableNV
vkFunCmdSetCoverageModulationTableNV = VkFun (Ptr ("vkCmdSetCoverageModulationTableNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetCoverageModulationTableNV where

#endif