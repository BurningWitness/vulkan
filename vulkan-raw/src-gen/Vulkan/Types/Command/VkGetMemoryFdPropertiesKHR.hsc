{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_fd

module Vulkan.Types.Command.VkGetMemoryFdPropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMemoryFdPropertiesKHR
import Vulkan.Types.VkFun



type VkGetMemoryFdPropertiesKHR =
          VkDevice -- ^ device
       -> VkExternalMemoryHandleTypeFlagBits -- ^ handleType
       -> #{type int} -- ^ fd
       -> Ptr VkMemoryFdPropertiesKHR -- ^ pMemoryFdProperties
       -> IO VkResult

vkFunGetMemoryFdPropertiesKHR :: VkFun VkGetMemoryFdPropertiesKHR
vkFunGetMemoryFdPropertiesKHR = VkFun (Ptr ("vkGetMemoryFdPropertiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetMemoryFdPropertiesKHR where

#endif