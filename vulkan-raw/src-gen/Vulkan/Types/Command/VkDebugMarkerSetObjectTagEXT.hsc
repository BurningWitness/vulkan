{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_marker

module Vulkan.Types.Command.VkDebugMarkerSetObjectTagEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDebugMarkerObjectTagInfoEXT
import Vulkan.Types.VkFun



type VkDebugMarkerSetObjectTagEXT =
          VkDevice -- ^ device
       -> Ptr VkDebugMarkerObjectTagInfoEXT -- ^ pTagInfo
       -> IO VkResult

vkFunDebugMarkerSetObjectTagEXT :: VkFun VkDebugMarkerSetObjectTagEXT
vkFunDebugMarkerSetObjectTagEXT = VkFun (Ptr ("vkDebugMarkerSetObjectTagEXT\0"##))

#else

module Vulkan.Types.Command.VkDebugMarkerSetObjectTagEXT where

#endif