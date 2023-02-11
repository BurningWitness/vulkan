{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_acquire_xlib_display

module Vulkan.Types.Command.VkAcquireXlibDisplayEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkAcquireXlibDisplayEXT =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr Display -- ^ dpy
       -> VkDisplayKHR -- ^ display
       -> IO VkResult

vkFunAcquireXlibDisplayEXT :: VkFun VkAcquireXlibDisplayEXT
vkFunAcquireXlibDisplayEXT = VkFun (Ptr ("vkAcquireXlibDisplayEXT\0"##))

#else

module Vulkan.Types.Command.VkAcquireXlibDisplayEXT where

#endif