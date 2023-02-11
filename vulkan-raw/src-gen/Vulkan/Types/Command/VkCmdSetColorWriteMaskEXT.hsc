{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetColorWriteMaskEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkColorComponentFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetColorWriteMaskEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstAttachment
       -> #{type uint32_t} -- ^ attachmentCount
       -> Ptr VkColorComponentFlags -- ^ pColorWriteMasks
       -> IO ()

vkFunCmdSetColorWriteMaskEXT :: VkFun VkCmdSetColorWriteMaskEXT
vkFunCmdSetColorWriteMaskEXT = VkFun (Ptr ("vkCmdSetColorWriteMaskEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetColorWriteMaskEXT where

#endif