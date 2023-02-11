{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Ext.VK_EXT_debug_utils
  ( pattern VK_EXT_DEBUG_UTILS_SPEC_VERSION
  , pattern VK_EXT_DEBUG_UTILS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT
  , pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT
  , pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT
  , pattern VK_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT
  , PFN_vkDebugUtilsMessengerCallbackEXT
  , VkDebugUtilsLabelEXT (..)
  , VkDebugUtilsMessageSeverityFlagBitsEXT
  , pattern VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT
  , pattern VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT
  , pattern VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT
  , pattern VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT
  , VkDebugUtilsMessageSeverityFlagsEXT
  , VkDebugUtilsMessageTypeFlagBitsEXT
  , pattern VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT
  , pattern VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT
  , pattern VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT
  , VkDebugUtilsMessageTypeFlagsEXT
  , VkDebugUtilsMessengerCallbackDataEXT (..)
  , VkDebugUtilsMessengerCallbackDataFlagsEXT
  , VkDebugUtilsMessengerCreateFlagsEXT
  , VkDebugUtilsMessengerCreateInfoEXT (..)
  , VkDebugUtilsMessengerEXT_T
  , VkDebugUtilsMessengerEXT
  , VkDebugUtilsObjectNameInfoEXT (..)
  , VkDebugUtilsObjectTagInfoEXT (..)
  , VkSetDebugUtilsObjectNameEXT
  , vkFunSetDebugUtilsObjectNameEXT
  , VkSetDebugUtilsObjectTagEXT
  , vkFunSetDebugUtilsObjectTagEXT
  , VkQueueBeginDebugUtilsLabelEXT
  , vkFunQueueBeginDebugUtilsLabelEXT
  , VkQueueEndDebugUtilsLabelEXT
  , vkFunQueueEndDebugUtilsLabelEXT
  , VkQueueInsertDebugUtilsLabelEXT
  , vkFunQueueInsertDebugUtilsLabelEXT
  , VkCmdBeginDebugUtilsLabelEXT
  , vkFunCmdBeginDebugUtilsLabelEXT
  , VkCmdEndDebugUtilsLabelEXT
  , vkFunCmdEndDebugUtilsLabelEXT
  , VkCmdInsertDebugUtilsLabelEXT
  , vkFunCmdInsertDebugUtilsLabelEXT
  , VkCreateDebugUtilsMessengerEXT
  , vkFunCreateDebugUtilsMessengerEXT
  , VkDestroyDebugUtilsMessengerEXT
  , vkFunDestroyDebugUtilsMessengerEXT
  , VkSubmitDebugUtilsMessageEXT
  , vkFunSubmitDebugUtilsMessageEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDebugUtilsMessageSeverityFlagBitsEXT
import Vulkan.Types.Enum.VkDebugUtilsMessageSeverityFlagsEXT
import Vulkan.Types.Enum.VkDebugUtilsMessageTypeFlagBitsEXT
import Vulkan.Types.Enum.VkDebugUtilsMessageTypeFlagsEXT
import Vulkan.Types.Enum.VkDebugUtilsMessengerCallbackDataFlagsEXT
import Vulkan.Types.Enum.VkDebugUtilsMessengerCreateFlagsEXT
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.FuncPointer
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDebugUtilsLabelEXT
import Vulkan.Types.Struct.VkDebugUtilsMessengerCallbackDataEXT
import Vulkan.Types.Struct.VkDebugUtilsMessengerCreateInfoEXT
import Vulkan.Types.Struct.VkDebugUtilsObjectNameInfoEXT
import Vulkan.Types.Struct.VkDebugUtilsObjectTagInfoEXT
import Vulkan.Types.Command.VkCmdBeginDebugUtilsLabelEXT
import Vulkan.Types.Command.VkCmdEndDebugUtilsLabelEXT
import Vulkan.Types.Command.VkCmdInsertDebugUtilsLabelEXT
import Vulkan.Types.Command.VkCreateDebugUtilsMessengerEXT
import Vulkan.Types.Command.VkDestroyDebugUtilsMessengerEXT
import Vulkan.Types.Command.VkQueueBeginDebugUtilsLabelEXT
import Vulkan.Types.Command.VkQueueEndDebugUtilsLabelEXT
import Vulkan.Types.Command.VkQueueInsertDebugUtilsLabelEXT
import Vulkan.Types.Command.VkSetDebugUtilsObjectNameEXT
import Vulkan.Types.Command.VkSetDebugUtilsObjectTagEXT
import Vulkan.Types.Command.VkSubmitDebugUtilsMessageEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DEBUG_UTILS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DEBUG_UTILS_SPEC_VERSION = 2

pattern VK_EXT_DEBUG_UTILS_EXTENSION_NAME :: CString
pattern VK_EXT_DEBUG_UTILS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DEBUG_UTILS_EXTENSION_NAME = Ptr ("VK_EXT_debug_utils\0"##)

#else

module Vulkan.Ext.VK_EXT_debug_utils where

#endif