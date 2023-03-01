{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkCmdEndRenderPass2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSubpassEndInfo
import Vulkan.Types.VkFun



type VkCmdEndRenderPass2 =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkSubpassEndInfo -- ^ pSubpassEndInfo
       -> IO ()

vkFunCmdEndRenderPass2 :: VkFun VkCmdEndRenderPass2
vkFunCmdEndRenderPass2 = VkFun (Ptr ("vkCmdEndRenderPass2\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkCmdEndRenderPass2"
  vkCmdEndRenderPass2
    :: VkCmdEndRenderPass2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdEndRenderPass2"
  vkCmdEndRenderPass2Unsafe
    :: VkCmdEndRenderPass2
##endif

#else

module Vulkan.Types.Command.VkCmdEndRenderPass2 where

#endif