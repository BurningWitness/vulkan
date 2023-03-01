{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_line_rasterization

module Vulkan.Types.Command.VkCmdSetLineStippleEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetLineStippleEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ lineStippleFactor
       -> #{type uint16_t} -- ^ lineStipplePattern
       -> IO ()

vkFunCmdSetLineStippleEXT :: VkFun VkCmdSetLineStippleEXT
vkFunCmdSetLineStippleEXT = VkFun (Ptr ("vkCmdSetLineStippleEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetLineStippleEXT where

#endif