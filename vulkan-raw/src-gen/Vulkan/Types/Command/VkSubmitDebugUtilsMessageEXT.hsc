{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Command.VkSubmitDebugUtilsMessageEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkDebugUtilsMessageSeverityFlagBitsEXT
import Vulkan.Types.Enum.VkDebugUtilsMessageTypeFlagsEXT
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDebugUtilsMessengerCallbackDataEXT
import Vulkan.Types.VkFun



type VkSubmitDebugUtilsMessageEXT =
          VkInstance -- ^ instance
       -> VkDebugUtilsMessageSeverityFlagBitsEXT -- ^ messageSeverity
       -> VkDebugUtilsMessageTypeFlagsEXT -- ^ messageTypes
       -> Ptr VkDebugUtilsMessengerCallbackDataEXT -- ^ pCallbackData
       -> IO ()

vkFunSubmitDebugUtilsMessageEXT :: VkFun VkSubmitDebugUtilsMessageEXT
vkFunSubmitDebugUtilsMessageEXT = VkFun (Ptr ("vkSubmitDebugUtilsMessageEXT\0"##))

#else

module Vulkan.Types.Command.VkSubmitDebugUtilsMessageEXT where

#endif