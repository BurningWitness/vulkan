{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkCmdCopyMicromapToMemoryEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyMicromapToMemoryInfoEXT
import Vulkan.Types.VkFun



type VkCmdCopyMicromapToMemoryEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyMicromapToMemoryInfoEXT -- ^ pInfo
       -> IO ()

vkFunCmdCopyMicromapToMemoryEXT :: VkFun VkCmdCopyMicromapToMemoryEXT
vkFunCmdCopyMicromapToMemoryEXT = VkFun (Ptr ("vkCmdCopyMicromapToMemoryEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdCopyMicromapToMemoryEXT where

#endif