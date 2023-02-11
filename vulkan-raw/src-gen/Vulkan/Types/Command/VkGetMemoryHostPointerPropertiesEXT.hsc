{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_external_memory_host

module Vulkan.Types.Command.VkGetMemoryHostPointerPropertiesEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMemoryHostPointerPropertiesEXT
import Vulkan.Types.VkFun



type VkGetMemoryHostPointerPropertiesEXT =
          VkDevice -- ^ device
       -> VkExternalMemoryHandleTypeFlagBits -- ^ handleType
       -> Ptr () -- ^ pHostPointer
       -> Ptr VkMemoryHostPointerPropertiesEXT -- ^ pMemoryHostPointerProperties
       -> IO VkResult

vkFunGetMemoryHostPointerPropertiesEXT :: VkFun VkGetMemoryHostPointerPropertiesEXT
vkFunGetMemoryHostPointerPropertiesEXT = VkFun (Ptr ("vkGetMemoryHostPointerPropertiesEXT\0"##))

#else

module Vulkan.Types.Command.VkGetMemoryHostPointerPropertiesEXT where

#endif