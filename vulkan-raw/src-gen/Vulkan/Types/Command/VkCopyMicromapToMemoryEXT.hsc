{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkCopyMicromapToMemoryEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyMicromapToMemoryInfoEXT
import Vulkan.Types.VkFun



type VkCopyMicromapToMemoryEXT =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ deferredOperation
       -> Ptr VkCopyMicromapToMemoryInfoEXT -- ^ pInfo
       -> IO VkResult

vkFunCopyMicromapToMemoryEXT :: VkFun VkCopyMicromapToMemoryEXT
vkFunCopyMicromapToMemoryEXT = VkFun (Ptr ("vkCopyMicromapToMemoryEXT\0"##))

#else

module Vulkan.Types.Command.VkCopyMicromapToMemoryEXT where

#endif