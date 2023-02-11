{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkBindImageMemory2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBindImageMemoryInfo
import Vulkan.Types.VkFun



type VkBindImageMemory2 =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ bindInfoCount
       -> Ptr VkBindImageMemoryInfo -- ^ pBindInfos
       -> IO VkResult

vkFunBindImageMemory2 :: VkFun VkBindImageMemory2
vkFunBindImageMemory2 = VkFun (Ptr ("vkBindImageMemory2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkBindImageMemory2"
  vkBindImageMemory2
    :: VkBindImageMemory2

foreign import CALLCV unsafe "vulkan/vulkan.h vkBindImageMemory2"
  vkBindImageMemory2Unsafe
    :: VkBindImageMemory2
##endif

#else

module Vulkan.Types.Command.VkBindImageMemory2 where

#endif