{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_full_screen_exclusive

module Vulkan.Types.Command.VkReleaseFullScreenExclusiveModeEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkReleaseFullScreenExclusiveModeEXT =
          VkDevice -- ^ device
       -> VkSwapchainKHR -- ^ swapchain
       -> IO VkResult

vkFunReleaseFullScreenExclusiveModeEXT :: VkFun VkReleaseFullScreenExclusiveModeEXT
vkFunReleaseFullScreenExclusiveModeEXT = VkFun (Ptr ("vkReleaseFullScreenExclusiveModeEXT\0"##))

#else

module Vulkan.Types.Command.VkReleaseFullScreenExclusiveModeEXT where

#endif