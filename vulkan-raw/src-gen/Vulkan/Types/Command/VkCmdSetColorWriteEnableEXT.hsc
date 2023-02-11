{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_color_write_enable

module Vulkan.Types.Command.VkCmdSetColorWriteEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetColorWriteEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ attachmentCount
       -> Ptr VkBool32 -- ^ pColorWriteEnables
       -> IO ()

vkFunCmdSetColorWriteEnableEXT :: VkFun VkCmdSetColorWriteEnableEXT
vkFunCmdSetColorWriteEnableEXT = VkFun (Ptr ("vkCmdSetColorWriteEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetColorWriteEnableEXT where

#endif