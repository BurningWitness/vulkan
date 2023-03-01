{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NVX_image_view_handle

module Vulkan.Types.Command.VkGetImageViewHandleNVX where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageViewHandleInfoNVX
import Vulkan.Types.VkFun



type VkGetImageViewHandleNVX =
          VkDevice -- ^ device
       -> Ptr VkImageViewHandleInfoNVX -- ^ pInfo
       -> IO #{type uint32_t}

vkFunGetImageViewHandleNVX :: VkFun VkGetImageViewHandleNVX
vkFunGetImageViewHandleNVX = VkFun (Ptr ("vkGetImageViewHandleNVX\0"##))

#else

module Vulkan.Types.Command.VkGetImageViewHandleNVX where

#endif