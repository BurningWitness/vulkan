{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetColorBlendEquationEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkColorBlendEquationEXT
import Vulkan.Types.VkFun



type VkCmdSetColorBlendEquationEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstAttachment
       -> #{type uint32_t} -- ^ attachmentCount
       -> Ptr VkColorBlendEquationEXT -- ^ pColorBlendEquations
       -> IO ()

vkFunCmdSetColorBlendEquationEXT :: VkFun VkCmdSetColorBlendEquationEXT
vkFunCmdSetColorBlendEquationEXT = VkFun (Ptr ("vkCmdSetColorBlendEquationEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetColorBlendEquationEXT where

#endif