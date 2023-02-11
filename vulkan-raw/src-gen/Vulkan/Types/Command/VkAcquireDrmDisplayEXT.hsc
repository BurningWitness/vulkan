{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_acquire_drm_display

module Vulkan.Types.Command.VkAcquireDrmDisplayEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkAcquireDrmDisplayEXT =
          VkPhysicalDevice -- ^ physicalDevice
       -> #{type int32_t} -- ^ drmFd
       -> VkDisplayKHR -- ^ display
       -> IO VkResult

vkFunAcquireDrmDisplayEXT :: VkFun VkAcquireDrmDisplayEXT
vkFunAcquireDrmDisplayEXT = VkFun (Ptr ("vkAcquireDrmDisplayEXT\0"##))

#else

module Vulkan.Types.Command.VkAcquireDrmDisplayEXT where

#endif