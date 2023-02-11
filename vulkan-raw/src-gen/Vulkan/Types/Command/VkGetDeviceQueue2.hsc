{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetDeviceQueue2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceQueueInfo2
import Vulkan.Types.VkFun



type VkGetDeviceQueue2 =
          VkDevice -- ^ device
       -> Ptr VkDeviceQueueInfo2 -- ^ pQueueInfo
       -> Ptr VkQueue -- ^ pQueue
       -> IO ()

vkFunGetDeviceQueue2 :: VkFun VkGetDeviceQueue2
vkFunGetDeviceQueue2 = VkFun (Ptr ("vkGetDeviceQueue2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetDeviceQueue2"
  vkGetDeviceQueue2
    :: VkGetDeviceQueue2

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetDeviceQueue2"
  vkGetDeviceQueue2Unsafe
    :: VkGetDeviceQueue2
##endif

#else

module Vulkan.Types.Command.VkGetDeviceQueue2 where

#endif