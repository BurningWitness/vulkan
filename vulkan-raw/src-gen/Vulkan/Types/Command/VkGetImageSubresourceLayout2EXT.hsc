{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_compression_control

module Vulkan.Types.Command.VkGetImageSubresourceLayout2EXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageSubresource2EXT
import Vulkan.Types.Struct.VkSubresourceLayout2EXT
import Vulkan.Types.VkFun



type VkGetImageSubresourceLayout2EXT =
          VkDevice -- ^ device
       -> VkImage -- ^ image
       -> Ptr VkImageSubresource2EXT -- ^ pSubresource
       -> Ptr VkSubresourceLayout2EXT -- ^ pLayout
       -> IO ()

vkFunGetImageSubresourceLayout2EXT :: VkFun VkGetImageSubresourceLayout2EXT
vkFunGetImageSubresourceLayout2EXT = VkFun (Ptr ("vkGetImageSubresourceLayout2EXT\0"##))

#else

module Vulkan.Types.Command.VkGetImageSubresourceLayout2EXT where

#endif