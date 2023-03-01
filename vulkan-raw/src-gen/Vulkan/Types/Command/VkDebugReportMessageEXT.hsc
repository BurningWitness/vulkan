{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_report

module Vulkan.Types.Command.VkDebugReportMessageEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkDebugReportFlagsEXT
import Vulkan.Types.Enum.VkDebugReportObjectTypeEXT
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkDebugReportMessageEXT =
          VkInstance -- ^ instance
       -> VkDebugReportFlagsEXT -- ^ flags
       -> VkDebugReportObjectTypeEXT -- ^ objectType
       -> #{type uint64_t} -- ^ object
       -> #{type size_t} -- ^ location
       -> #{type int32_t} -- ^ messageCode
       -> Ptr #{type char} -- ^ pLayerPrefix
       -> Ptr #{type char} -- ^ pMessage
       -> IO ()

vkFunDebugReportMessageEXT :: VkFun VkDebugReportMessageEXT
vkFunDebugReportMessageEXT = VkFun (Ptr ("vkDebugReportMessageEXT\0"##))

#else

module Vulkan.Types.Command.VkDebugReportMessageEXT where

#endif