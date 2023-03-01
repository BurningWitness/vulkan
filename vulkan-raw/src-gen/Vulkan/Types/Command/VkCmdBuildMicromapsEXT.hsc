{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkCmdBuildMicromapsEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMicromapBuildInfoEXT
import Vulkan.Types.VkFun



type VkCmdBuildMicromapsEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ infoCount
       -> Ptr VkMicromapBuildInfoEXT -- ^ pInfos
       -> IO ()

vkFunCmdBuildMicromapsEXT :: VkFun VkCmdBuildMicromapsEXT
vkFunCmdBuildMicromapsEXT = VkFun (Ptr ("vkCmdBuildMicromapsEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdBuildMicromapsEXT where

#endif