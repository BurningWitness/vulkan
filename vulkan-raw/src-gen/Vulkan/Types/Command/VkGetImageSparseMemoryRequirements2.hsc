{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetImageSparseMemoryRequirements2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageSparseMemoryRequirementsInfo2
import Vulkan.Types.Struct.VkSparseImageMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetImageSparseMemoryRequirements2 =
          VkDevice -- ^ device
       -> Ptr VkImageSparseMemoryRequirementsInfo2 -- ^ pInfo
       -> Ptr #{type uint32_t} -- ^ pSparseMemoryRequirementCount
       -> Ptr VkSparseImageMemoryRequirements2 -- ^ pSparseMemoryRequirements
       -> IO ()

vkFunGetImageSparseMemoryRequirements2 :: VkFun VkGetImageSparseMemoryRequirements2
vkFunGetImageSparseMemoryRequirements2 = VkFun (Ptr ("vkGetImageSparseMemoryRequirements2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetImageSparseMemoryRequirements2"
  vkGetImageSparseMemoryRequirements2
    :: VkGetImageSparseMemoryRequirements2

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetImageSparseMemoryRequirements2"
  vkGetImageSparseMemoryRequirements2Unsafe
    :: VkGetImageSparseMemoryRequirements2
##endif

#else

module Vulkan.Types.Command.VkGetImageSparseMemoryRequirements2 where

#endif