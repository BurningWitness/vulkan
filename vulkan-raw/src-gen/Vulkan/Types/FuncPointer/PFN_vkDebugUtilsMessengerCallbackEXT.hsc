#include <vulkan/vulkan.h>

module Vulkan.Types.FuncPointer.PFN_vkDebugUtilsMessengerCallbackEXT where

import Data.Int
import Data.Void
import Data.Word
import Foreign.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkDebugUtilsMessageSeverityFlagBitsEXT
import Vulkan.Types.Enum.VkDebugUtilsMessageTypeFlagsEXT
import Vulkan.Types.Struct.VkDebugUtilsMessengerCallbackDataEXT



type PFN_vkDebugUtilsMessengerCallbackEXT =
          VkDebugUtilsMessageSeverityFlagBitsEXT -- ^ messageSeverity
       -> VkDebugUtilsMessageTypeFlagsEXT -- ^ messageTypes
       -> Ptr VkDebugUtilsMessengerCallbackDataEXT -- ^ pCallbackData
       -> Ptr () -- ^ pUserData
       -> IO VkBool32