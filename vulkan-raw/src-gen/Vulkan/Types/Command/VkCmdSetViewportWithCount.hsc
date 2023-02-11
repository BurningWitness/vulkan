{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdSetViewportWithCount where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkViewport
import Vulkan.Types.VkFun



type VkCmdSetViewportWithCount =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ viewportCount
       -> Ptr VkViewport -- ^ pViewports
       -> IO ()

vkFunCmdSetViewportWithCount :: VkFun VkCmdSetViewportWithCount
vkFunCmdSetViewportWithCount = VkFun (Ptr ("vkCmdSetViewportWithCount\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdSetViewportWithCount"
  vkCmdSetViewportWithCount
    :: VkCmdSetViewportWithCount

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetViewportWithCount"
  vkCmdSetViewportWithCountUnsafe
    :: VkCmdSetViewportWithCount
##endif

#else

module Vulkan.Types.Command.VkCmdSetViewportWithCount where

#endif