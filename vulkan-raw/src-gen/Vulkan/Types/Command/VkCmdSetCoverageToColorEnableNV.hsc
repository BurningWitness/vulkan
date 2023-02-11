{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetCoverageToColorEnableNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetCoverageToColorEnableNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ coverageToColorEnable
       -> IO ()

vkFunCmdSetCoverageToColorEnableNV :: VkFun VkCmdSetCoverageToColorEnableNV
vkFunCmdSetCoverageToColorEnableNV = VkFun (Ptr ("vkCmdSetCoverageToColorEnableNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetCoverageToColorEnableNV where

#endif