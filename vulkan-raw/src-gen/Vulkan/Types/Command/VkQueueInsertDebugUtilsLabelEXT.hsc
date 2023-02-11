{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Command.VkQueueInsertDebugUtilsLabelEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDebugUtilsLabelEXT
import Vulkan.Types.VkFun



type VkQueueInsertDebugUtilsLabelEXT =
          VkQueue -- ^ queue
       -> Ptr VkDebugUtilsLabelEXT -- ^ pLabelInfo
       -> IO ()

vkFunQueueInsertDebugUtilsLabelEXT :: VkFun VkQueueInsertDebugUtilsLabelEXT
vkFunQueueInsertDebugUtilsLabelEXT = VkFun (Ptr ("vkQueueInsertDebugUtilsLabelEXT\0"##))

#else

module Vulkan.Types.Command.VkQueueInsertDebugUtilsLabelEXT where

#endif