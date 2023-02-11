{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_marker

module Vulkan.Types.Command.VkDebugMarkerSetObjectNameEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDebugMarkerObjectNameInfoEXT
import Vulkan.Types.VkFun



type VkDebugMarkerSetObjectNameEXT =
          VkDevice -- ^ device
       -> Ptr VkDebugMarkerObjectNameInfoEXT -- ^ pNameInfo
       -> IO VkResult

vkFunDebugMarkerSetObjectNameEXT :: VkFun VkDebugMarkerSetObjectNameEXT
vkFunDebugMarkerSetObjectNameEXT = VkFun (Ptr ("vkDebugMarkerSetObjectNameEXT\0"##))

#else

module Vulkan.Types.Command.VkDebugMarkerSetObjectNameEXT where

#endif