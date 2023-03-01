{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetCoverageReductionModeNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCoverageReductionModeNV
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetCoverageReductionModeNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkCoverageReductionModeNV -- ^ coverageReductionMode
       -> IO ()

vkFunCmdSetCoverageReductionModeNV :: VkFun VkCmdSetCoverageReductionModeNV
vkFunCmdSetCoverageReductionModeNV = VkFun (Ptr ("vkCmdSetCoverageReductionModeNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetCoverageReductionModeNV where

#endif