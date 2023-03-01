{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetFrontFaceEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkFrontFace
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetFrontFaceEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkFrontFace -- ^ frontFace
       -> IO ()

vkFunCmdSetFrontFaceEXT :: VkFun VkCmdSetFrontFaceEXT
vkFunCmdSetFrontFaceEXT = VkFun (Ptr ("vkCmdSetFrontFaceEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetFrontFaceEXT where

#endif