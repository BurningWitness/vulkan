{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NVX_image_view_handle

module Vulkan.Types.Command.VkGetImageViewAddressNVX where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageViewAddressPropertiesNVX
import Vulkan.Types.VkFun



type VkGetImageViewAddressNVX =
          VkDevice -- ^ device
       -> VkImageView -- ^ imageView
       -> Ptr VkImageViewAddressPropertiesNVX -- ^ pProperties
       -> IO VkResult

vkFunGetImageViewAddressNVX :: VkFun VkGetImageViewAddressNVX
vkFunGetImageViewAddressNVX = VkFun (Ptr ("vkGetImageViewAddressNVX\0"##))

#else

module Vulkan.Types.Command.VkGetImageViewAddressNVX where

#endif