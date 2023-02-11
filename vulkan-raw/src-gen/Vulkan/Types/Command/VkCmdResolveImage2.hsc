{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCmdResolveImage2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkResolveImageInfo2
import Vulkan.Types.VkFun



type VkCmdResolveImage2 =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkResolveImageInfo2 -- ^ pResolveImageInfo
       -> IO ()

vkFunCmdResolveImage2 :: VkFun VkCmdResolveImage2
vkFunCmdResolveImage2 = VkFun (Ptr ("vkCmdResolveImage2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCmdResolveImage2"
  vkCmdResolveImage2
    :: VkCmdResolveImage2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdResolveImage2"
  vkCmdResolveImage2Unsafe
    :: VkCmdResolveImage2
##endif

#else

module Vulkan.Types.Command.VkCmdResolveImage2 where

#endif