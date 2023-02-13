{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_memory_requirements2

module Vulkan.Types.Command.VkGetImageMemoryRequirements2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageMemoryRequirementsInfo2
import Vulkan.Types.Struct.VkMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetImageMemoryRequirements2KHR =
          VkDevice -- ^ device
       -> Ptr VkImageMemoryRequirementsInfo2 -- ^ pInfo
       -> Ptr VkMemoryRequirements2 -- ^ pMemoryRequirements
       -> IO ()

vkFunGetImageMemoryRequirements2KHR :: VkFun VkGetImageMemoryRequirements2KHR
vkFunGetImageMemoryRequirements2KHR = VkFun (Ptr ("vkGetImageMemoryRequirements2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetImageMemoryRequirements2KHR where

#endif