{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdBlitImage2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBlitImageInfo2
import Vulkan.Types.VkFun



type VkCmdBlitImage2 =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkBlitImageInfo2 -- ^ pBlitImageInfo
       -> IO ()

vkFunCmdBlitImage2 :: VkFun VkCmdBlitImage2
vkFunCmdBlitImage2 = VkFun (Ptr ("vkCmdBlitImage2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdBlitImage2"
  vkCmdBlitImage2
    :: VkCmdBlitImage2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdBlitImage2"
  vkCmdBlitImage2Unsafe
    :: VkCmdBlitImage2
##endif

#else

module Vulkan.Types.Command.VkCmdBlitImage2 where

#endif