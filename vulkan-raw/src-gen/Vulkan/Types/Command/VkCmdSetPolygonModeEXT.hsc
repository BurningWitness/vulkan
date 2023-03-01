{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetPolygonModeEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPolygonMode
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetPolygonModeEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPolygonMode -- ^ polygonMode
       -> IO ()

vkFunCmdSetPolygonModeEXT :: VkFun VkCmdSetPolygonModeEXT
vkFunCmdSetPolygonModeEXT = VkFun (Ptr ("vkCmdSetPolygonModeEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetPolygonModeEXT where

#endif