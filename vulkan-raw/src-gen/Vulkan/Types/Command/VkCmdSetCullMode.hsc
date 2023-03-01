{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetCullMode where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCullModeFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetCullMode =
          VkCommandBuffer -- ^ commandBuffer
       -> VkCullModeFlags -- ^ cullMode
       -> IO ()

vkFunCmdSetCullMode :: VkFun VkCmdSetCullMode
vkFunCmdSetCullMode = VkFun (Ptr ("vkCmdSetCullMode\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetCullMode"
  vkCmdSetCullMode
    :: VkCmdSetCullMode

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetCullMode"
  vkCmdSetCullModeUnsafe
    :: VkCmdSetCullMode
##endif

#else

module Vulkan.Types.Command.VkCmdSetCullMode where

#endif