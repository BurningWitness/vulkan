{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdEndRendering where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdEndRendering =
          VkCommandBuffer -- ^ commandBuffer
       -> IO ()

vkFunCmdEndRendering :: VkFun VkCmdEndRendering
vkFunCmdEndRendering = VkFun (Ptr ("vkCmdEndRendering\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdEndRendering"
  vkCmdEndRendering
    :: VkCmdEndRendering

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdEndRendering"
  vkCmdEndRenderingUnsafe
    :: VkCmdEndRendering
##endif

#else

module Vulkan.Types.Command.VkCmdEndRendering where

#endif