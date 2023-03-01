{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkCmdCopyMicromapEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyMicromapInfoEXT
import Vulkan.Types.VkFun



type VkCmdCopyMicromapEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyMicromapInfoEXT -- ^ pInfo
       -> IO ()

vkFunCmdCopyMicromapEXT :: VkFun VkCmdCopyMicromapEXT
vkFunCmdCopyMicromapEXT = VkFun (Ptr ("vkCmdCopyMicromapEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdCopyMicromapEXT where

#endif