{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetColorBlendAdvancedEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkColorBlendAdvancedEXT
import Vulkan.Types.VkFun



type VkCmdSetColorBlendAdvancedEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstAttachment
       -> #{type uint32_t} -- ^ attachmentCount
       -> Ptr VkColorBlendAdvancedEXT -- ^ pColorBlendAdvanced
       -> IO ()

vkFunCmdSetColorBlendAdvancedEXT :: VkFun VkCmdSetColorBlendAdvancedEXT
vkFunCmdSetColorBlendAdvancedEXT = VkFun (Ptr ("vkCmdSetColorBlendAdvancedEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetColorBlendAdvancedEXT where

#endif