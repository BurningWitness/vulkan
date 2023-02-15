#include <vulkan/vulkan.h>

module Vulkan.Types.FuncPointer.PFN_vkDeviceMemoryReportCallbackEXT where

import Data.Int
import Data.Void
import Data.Word
import Foreign.Ptr
import Vulkan.Types.Struct.VkDeviceMemoryReportCallbackDataEXT



type PFN_vkDeviceMemoryReportCallbackEXT =
          Ptr VkDeviceMemoryReportCallbackDataEXT -- ^ pCallbackData
       -> Ptr () -- ^ pUserData
       -> IO ()