{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group

module Vulkan.Types.Command.VkCmdDispatchBaseKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDispatchBaseKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ baseGroupX
       -> #{type uint32_t} -- ^ baseGroupY
       -> #{type uint32_t} -- ^ baseGroupZ
       -> #{type uint32_t} -- ^ groupCountX
       -> #{type uint32_t} -- ^ groupCountY
       -> #{type uint32_t} -- ^ groupCountZ
       -> IO ()

vkFunCmdDispatchBaseKHR :: VkFun VkCmdDispatchBaseKHR
vkFunCmdDispatchBaseKHR = VkFun (Ptr ("vkCmdDispatchBaseKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdDispatchBaseKHR where

#endif