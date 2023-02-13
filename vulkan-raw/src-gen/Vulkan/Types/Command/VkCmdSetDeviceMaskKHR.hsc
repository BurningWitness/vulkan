{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group

module Vulkan.Types.Command.VkCmdSetDeviceMaskKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDeviceMaskKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ deviceMask
       -> IO ()

vkFunCmdSetDeviceMaskKHR :: VkFun VkCmdSetDeviceMaskKHR
vkFunCmdSetDeviceMaskKHR = VkFun (Ptr ("vkCmdSetDeviceMaskKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdSetDeviceMaskKHR where

#endif