{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_acquire_drm_display

module Vulkan.Types.Command.VkGetDrmDisplayEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDrmDisplayEXT =
          VkPhysicalDevice -- ^ physicalDevice
       -> #{type int32_t} -- ^ drmFd
       -> #{type uint32_t} -- ^ connectorId
       -> Ptr VkDisplayKHR -- ^ display
       -> IO VkResult

vkFunGetDrmDisplayEXT :: VkFun VkGetDrmDisplayEXT
vkFunGetDrmDisplayEXT = VkFun (Ptr ("vkGetDrmDisplayEXT\0"##))

#else

module Vulkan.Types.Command.VkGetDrmDisplayEXT where

#endif