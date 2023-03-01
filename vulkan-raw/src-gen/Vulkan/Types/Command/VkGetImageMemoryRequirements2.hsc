{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetImageMemoryRequirements2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageMemoryRequirementsInfo2
import Vulkan.Types.Struct.VkMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetImageMemoryRequirements2 =
          VkDevice -- ^ device
       -> Ptr VkImageMemoryRequirementsInfo2 -- ^ pInfo
       -> Ptr VkMemoryRequirements2 -- ^ pMemoryRequirements
       -> IO ()

vkFunGetImageMemoryRequirements2 :: VkFun VkGetImageMemoryRequirements2
vkFunGetImageMemoryRequirements2 = VkFun (Ptr ("vkGetImageMemoryRequirements2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetImageMemoryRequirements2"
  vkGetImageMemoryRequirements2
    :: VkGetImageMemoryRequirements2

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetImageMemoryRequirements2"
  vkGetImageMemoryRequirements2Unsafe
    :: VkGetImageMemoryRequirements2
##endif

#else

module Vulkan.Types.Command.VkGetImageMemoryRequirements2 where

#endif