{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_acquire_xlib_display

module Vulkan.Types.Command.VkGetRandROutputDisplayEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetRandROutputDisplayEXT =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr Display -- ^ dpy
       -> RROutput -- ^ rrOutput
       -> Ptr VkDisplayKHR -- ^ pDisplay
       -> IO VkResult

vkFunGetRandROutputDisplayEXT :: VkFun VkGetRandROutputDisplayEXT
vkFunGetRandROutputDisplayEXT = VkFun (Ptr ("vkGetRandROutputDisplayEXT\0"##))

#else

module Vulkan.Types.Command.VkGetRandROutputDisplayEXT where

#endif