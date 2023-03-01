{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetColorBlendEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetColorBlendEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstAttachment
       -> #{type uint32_t} -- ^ attachmentCount
       -> Ptr VkBool32 -- ^ pColorBlendEnables
       -> IO ()

vkFunCmdSetColorBlendEnableEXT :: VkFun VkCmdSetColorBlendEnableEXT
vkFunCmdSetColorBlendEnableEXT = VkFun (Ptr ("vkCmdSetColorBlendEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetColorBlendEnableEXT where

#endif