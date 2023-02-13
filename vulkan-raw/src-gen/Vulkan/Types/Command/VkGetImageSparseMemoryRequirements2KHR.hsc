{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_memory_requirements2

module Vulkan.Types.Command.VkGetImageSparseMemoryRequirements2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageSparseMemoryRequirementsInfo2
import Vulkan.Types.Struct.VkSparseImageMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetImageSparseMemoryRequirements2KHR =
          VkDevice -- ^ device
       -> Ptr VkImageSparseMemoryRequirementsInfo2 -- ^ pInfo
       -> Ptr #{type uint32_t} -- ^ pSparseMemoryRequirementCount
       -> Ptr VkSparseImageMemoryRequirements2 -- ^ pSparseMemoryRequirements
       -> IO ()

vkFunGetImageSparseMemoryRequirements2KHR :: VkFun VkGetImageSparseMemoryRequirements2KHR
vkFunGetImageSparseMemoryRequirements2KHR = VkFun (Ptr ("vkGetImageSparseMemoryRequirements2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetImageSparseMemoryRequirements2KHR where

#endif