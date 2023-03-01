{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Command.VkQueueEndDebugUtilsLabelEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkQueueEndDebugUtilsLabelEXT =
          VkQueue -- ^ queue
       -> IO ()

vkFunQueueEndDebugUtilsLabelEXT :: VkFun VkQueueEndDebugUtilsLabelEXT
vkFunQueueEndDebugUtilsLabelEXT = VkFun (Ptr ("vkQueueEndDebugUtilsLabelEXT\0"##))

#else

module Vulkan.Types.Command.VkQueueEndDebugUtilsLabelEXT where

#endif