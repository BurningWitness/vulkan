{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkCmdBeginRenderPass2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRenderPassBeginInfo
import Vulkan.Types.Struct.VkSubpassBeginInfo
import Vulkan.Types.VkFun



type VkCmdBeginRenderPass2 =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkRenderPassBeginInfo -- ^ pRenderPassBegin
       -> Ptr VkSubpassBeginInfo -- ^ pSubpassBeginInfo
       -> IO ()

vkFunCmdBeginRenderPass2 :: VkFun VkCmdBeginRenderPass2
vkFunCmdBeginRenderPass2 = VkFun (Ptr ("vkCmdBeginRenderPass2\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkCmdBeginRenderPass2"
  vkCmdBeginRenderPass2
    :: VkCmdBeginRenderPass2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdBeginRenderPass2"
  vkCmdBeginRenderPass2Unsafe
    :: VkCmdBeginRenderPass2
##endif

#else

module Vulkan.Types.Command.VkCmdBeginRenderPass2 where

#endif