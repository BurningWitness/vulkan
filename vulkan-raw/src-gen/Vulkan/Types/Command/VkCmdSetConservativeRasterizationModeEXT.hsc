{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetConservativeRasterizationModeEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkConservativeRasterizationModeEXT
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetConservativeRasterizationModeEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkConservativeRasterizationModeEXT -- ^ conservativeRasterizationMode
       -> IO ()

vkFunCmdSetConservativeRasterizationModeEXT :: VkFun VkCmdSetConservativeRasterizationModeEXT
vkFunCmdSetConservativeRasterizationModeEXT = VkFun (Ptr ("vkCmdSetConservativeRasterizationModeEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetConservativeRasterizationModeEXT where

#endif