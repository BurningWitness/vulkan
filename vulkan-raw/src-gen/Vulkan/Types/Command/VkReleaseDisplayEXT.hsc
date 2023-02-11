{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_direct_mode_display

module Vulkan.Types.Command.VkReleaseDisplayEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkReleaseDisplayEXT =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkDisplayKHR -- ^ display
       -> IO VkResult

vkFunReleaseDisplayEXT :: VkFun VkReleaseDisplayEXT
vkFunReleaseDisplayEXT = VkFun (Ptr ("vkReleaseDisplayEXT\0"##))

#else

module Vulkan.Types.Command.VkReleaseDisplayEXT where

#endif