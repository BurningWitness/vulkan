{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetBufferMemoryRequirements2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferMemoryRequirementsInfo2
import Vulkan.Types.Struct.VkMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetBufferMemoryRequirements2 =
          VkDevice -- ^ device
       -> Ptr VkBufferMemoryRequirementsInfo2 -- ^ pInfo
       -> Ptr VkMemoryRequirements2 -- ^ pMemoryRequirements
       -> IO ()

vkFunGetBufferMemoryRequirements2 :: VkFun VkGetBufferMemoryRequirements2
vkFunGetBufferMemoryRequirements2 = VkFun (Ptr ("vkGetBufferMemoryRequirements2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetBufferMemoryRequirements2"
  vkGetBufferMemoryRequirements2
    :: VkGetBufferMemoryRequirements2

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetBufferMemoryRequirements2"
  vkGetBufferMemoryRequirements2Unsafe
    :: VkGetBufferMemoryRequirements2
##endif

#else

module Vulkan.Types.Command.VkGetBufferMemoryRequirements2 where

#endif