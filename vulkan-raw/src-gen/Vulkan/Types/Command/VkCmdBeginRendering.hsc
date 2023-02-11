{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdBeginRendering where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRenderingInfo
import Vulkan.Types.VkFun



type VkCmdBeginRendering =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkRenderingInfo -- ^ pRenderingInfo
       -> IO ()

vkFunCmdBeginRendering :: VkFun VkCmdBeginRendering
vkFunCmdBeginRendering = VkFun (Ptr ("vkCmdBeginRendering\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdBeginRendering"
  vkCmdBeginRendering
    :: VkCmdBeginRendering

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdBeginRendering"
  vkCmdBeginRenderingUnsafe
    :: VkCmdBeginRendering
##endif

#else

module Vulkan.Types.Command.VkCmdBeginRendering where

#endif