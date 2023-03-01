{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Command.VkSetDebugUtilsObjectNameEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDebugUtilsObjectNameInfoEXT
import Vulkan.Types.VkFun



type VkSetDebugUtilsObjectNameEXT =
          VkDevice -- ^ device
       -> Ptr VkDebugUtilsObjectNameInfoEXT -- ^ pNameInfo
       -> IO VkResult

vkFunSetDebugUtilsObjectNameEXT :: VkFun VkSetDebugUtilsObjectNameEXT
vkFunSetDebugUtilsObjectNameEXT = VkFun (Ptr ("vkSetDebugUtilsObjectNameEXT\0"##))

#else

module Vulkan.Types.Command.VkSetDebugUtilsObjectNameEXT where

#endif