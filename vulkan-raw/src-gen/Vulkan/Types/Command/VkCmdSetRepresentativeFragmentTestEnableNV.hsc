{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetRepresentativeFragmentTestEnableNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetRepresentativeFragmentTestEnableNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ representativeFragmentTestEnable
       -> IO ()

vkFunCmdSetRepresentativeFragmentTestEnableNV :: VkFun VkCmdSetRepresentativeFragmentTestEnableNV
vkFunCmdSetRepresentativeFragmentTestEnableNV = VkFun (Ptr ("vkCmdSetRepresentativeFragmentTestEnableNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetRepresentativeFragmentTestEnableNV where

#endif