{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkCmdCopyMemoryToMicromapEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyMemoryToMicromapInfoEXT
import Vulkan.Types.VkFun



type VkCmdCopyMemoryToMicromapEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyMemoryToMicromapInfoEXT -- ^ pInfo
       -> IO ()

vkFunCmdCopyMemoryToMicromapEXT :: VkFun VkCmdCopyMemoryToMicromapEXT
vkFunCmdCopyMemoryToMicromapEXT = VkFun (Ptr ("vkCmdCopyMemoryToMicromapEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdCopyMemoryToMicromapEXT where

#endif