{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_drm_format_modifier

module Vulkan.Types.Command.VkGetImageDrmFormatModifierPropertiesEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageDrmFormatModifierPropertiesEXT
import Vulkan.Types.VkFun



type VkGetImageDrmFormatModifierPropertiesEXT =
          VkDevice -- ^ device
       -> VkImage -- ^ image
       -> Ptr VkImageDrmFormatModifierPropertiesEXT -- ^ pProperties
       -> IO VkResult

vkFunGetImageDrmFormatModifierPropertiesEXT :: VkFun VkGetImageDrmFormatModifierPropertiesEXT
vkFunGetImageDrmFormatModifierPropertiesEXT = VkFun (Ptr ("vkGetImageDrmFormatModifierPropertiesEXT\0"##))

#else

module Vulkan.Types.Command.VkGetImageDrmFormatModifierPropertiesEXT where

#endif