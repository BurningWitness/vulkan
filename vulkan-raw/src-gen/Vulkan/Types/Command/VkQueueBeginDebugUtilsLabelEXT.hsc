{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Command.VkQueueBeginDebugUtilsLabelEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDebugUtilsLabelEXT
import Vulkan.Types.VkFun



type VkQueueBeginDebugUtilsLabelEXT =
          VkQueue -- ^ queue
       -> Ptr VkDebugUtilsLabelEXT -- ^ pLabelInfo
       -> IO ()

vkFunQueueBeginDebugUtilsLabelEXT :: VkFun VkQueueBeginDebugUtilsLabelEXT
vkFunQueueBeginDebugUtilsLabelEXT = VkFun (Ptr ("vkQueueBeginDebugUtilsLabelEXT\0"##))

#else

module Vulkan.Types.Command.VkQueueBeginDebugUtilsLabelEXT where

#endif