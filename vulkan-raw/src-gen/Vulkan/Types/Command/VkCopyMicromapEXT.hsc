{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkCopyMicromapEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyMicromapInfoEXT
import Vulkan.Types.VkFun



type VkCopyMicromapEXT =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ deferredOperation
       -> Ptr VkCopyMicromapInfoEXT -- ^ pInfo
       -> IO VkResult

vkFunCopyMicromapEXT :: VkFun VkCopyMicromapEXT
vkFunCopyMicromapEXT = VkFun (Ptr ("vkCopyMicromapEXT\0"##))

#else

module Vulkan.Types.Command.VkCopyMicromapEXT where

#endif