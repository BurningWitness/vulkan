{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkCopyMemoryToMicromapEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyMemoryToMicromapInfoEXT
import Vulkan.Types.VkFun



type VkCopyMemoryToMicromapEXT =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ deferredOperation
       -> Ptr VkCopyMemoryToMicromapInfoEXT -- ^ pInfo
       -> IO VkResult

vkFunCopyMemoryToMicromapEXT :: VkFun VkCopyMemoryToMicromapEXT
vkFunCopyMemoryToMicromapEXT = VkFun (Ptr ("vkCopyMemoryToMicromapEXT\0"##))

#else

module Vulkan.Types.Command.VkCopyMemoryToMicromapEXT where

#endif