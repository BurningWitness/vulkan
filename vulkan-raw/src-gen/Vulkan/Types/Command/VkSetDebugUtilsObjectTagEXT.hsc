{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Command.VkSetDebugUtilsObjectTagEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDebugUtilsObjectTagInfoEXT
import Vulkan.Types.VkFun



type VkSetDebugUtilsObjectTagEXT =
          VkDevice -- ^ device
       -> Ptr VkDebugUtilsObjectTagInfoEXT -- ^ pTagInfo
       -> IO VkResult

vkFunSetDebugUtilsObjectTagEXT :: VkFun VkSetDebugUtilsObjectTagEXT
vkFunSetDebugUtilsObjectTagEXT = VkFun (Ptr ("vkSetDebugUtilsObjectTagEXT\0"##))

#else

module Vulkan.Types.Command.VkSetDebugUtilsObjectTagEXT where

#endif