{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_swapchain_maintenance1

module Vulkan.Types.Command.VkReleaseSwapchainImagesEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkReleaseSwapchainImagesInfoEXT
import Vulkan.Types.VkFun



type VkReleaseSwapchainImagesEXT =
          VkDevice -- ^ device
       -> Ptr VkReleaseSwapchainImagesInfoEXT -- ^ pReleaseInfo
       -> IO VkResult

vkFunReleaseSwapchainImagesEXT :: VkFun VkReleaseSwapchainImagesEXT
vkFunReleaseSwapchainImagesEXT = VkFun (Ptr ("vkReleaseSwapchainImagesEXT\0"##))

#else

module Vulkan.Types.Command.VkReleaseSwapchainImagesEXT where

#endif