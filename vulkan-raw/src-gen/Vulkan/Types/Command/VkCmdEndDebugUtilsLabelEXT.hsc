{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Command.VkCmdEndDebugUtilsLabelEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdEndDebugUtilsLabelEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> IO ()

vkFunCmdEndDebugUtilsLabelEXT :: VkFun VkCmdEndDebugUtilsLabelEXT
vkFunCmdEndDebugUtilsLabelEXT = VkFun (Ptr ("vkCmdEndDebugUtilsLabelEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdEndDebugUtilsLabelEXT where

#endif