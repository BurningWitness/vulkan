{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetCoverageToColorLocationNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetCoverageToColorLocationNV =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ coverageToColorLocation
       -> IO ()

vkFunCmdSetCoverageToColorLocationNV :: VkFun VkCmdSetCoverageToColorLocationNV
vkFunCmdSetCoverageToColorLocationNV = VkFun (Ptr ("vkCmdSetCoverageToColorLocationNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetCoverageToColorLocationNV where

#endif