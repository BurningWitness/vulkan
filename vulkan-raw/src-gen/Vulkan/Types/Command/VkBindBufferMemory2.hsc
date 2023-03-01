{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkBindBufferMemory2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBindBufferMemoryInfo
import Vulkan.Types.VkFun



type VkBindBufferMemory2 =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ bindInfoCount
       -> Ptr VkBindBufferMemoryInfo -- ^ pBindInfos
       -> IO VkResult

vkFunBindBufferMemory2 :: VkFun VkBindBufferMemory2
vkFunBindBufferMemory2 = VkFun (Ptr ("vkBindBufferMemory2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkBindBufferMemory2"
  vkBindBufferMemory2
    :: VkBindBufferMemory2

foreign import CALLCV unsafe "vulkan/vulkan.h vkBindBufferMemory2"
  vkBindBufferMemory2Unsafe
    :: VkBindBufferMemory2
##endif

#else

module Vulkan.Types.Command.VkBindBufferMemory2 where

#endif