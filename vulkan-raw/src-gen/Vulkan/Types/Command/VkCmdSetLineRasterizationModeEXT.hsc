{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetLineRasterizationModeEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkLineRasterizationModeEXT
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetLineRasterizationModeEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkLineRasterizationModeEXT -- ^ lineRasterizationMode
       -> IO ()

vkFunCmdSetLineRasterizationModeEXT :: VkFun VkCmdSetLineRasterizationModeEXT
vkFunCmdSetLineRasterizationModeEXT = VkFun (Ptr ("vkCmdSetLineRasterizationModeEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetLineRasterizationModeEXT where

#endif