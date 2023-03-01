{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkCmdSetDeviceMask where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDeviceMask =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ deviceMask
       -> IO ()

vkFunCmdSetDeviceMask :: VkFun VkCmdSetDeviceMask
vkFunCmdSetDeviceMask = VkFun (Ptr ("vkCmdSetDeviceMask\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkCmdSetDeviceMask"
  vkCmdSetDeviceMask
    :: VkCmdSetDeviceMask

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetDeviceMask"
  vkCmdSetDeviceMaskUnsafe
    :: VkCmdSetDeviceMask
##endif

#else

module Vulkan.Types.Command.VkCmdSetDeviceMask where

#endif