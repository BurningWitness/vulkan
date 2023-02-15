#include <vulkan/vulkan.h>

module Vulkan.Types.FuncPointer.PFN_vkDebugReportCallbackEXT where

import Data.Int
import Data.Void
import Data.Word
import Foreign.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkDebugReportFlagsEXT
import Vulkan.Types.Enum.VkDebugReportObjectTypeEXT



type PFN_vkDebugReportCallbackEXT =
          VkDebugReportFlagsEXT -- ^ flags
       -> VkDebugReportObjectTypeEXT -- ^ objectType
       -> #{type uint64_t} -- ^ object
       -> #{type size_t} -- ^ location
       -> #{type int32_t} -- ^ messageCode
       -> Ptr #{type char} -- ^ pLayerPrefix
       -> Ptr #{type char} -- ^ pMessage
       -> Ptr () -- ^ pUserData
       -> IO VkBool32