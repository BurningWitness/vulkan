{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_compression_control

module Vulkan.Ext.VK_EXT_image_compression_control
  ( pattern VK_EXT_IMAGE_COMPRESSION_CONTROL_SPEC_VERSION
  , pattern VK_EXT_IMAGE_COMPRESSION_CONTROL_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_FEATURES_EXT
  , VkPhysicalDeviceImageCompressionControlFeaturesEXT (..)
  , pattern VK_STRUCTURE_TYPE_IMAGE_COMPRESSION_CONTROL_EXT
  , VkImageCompressionControlEXT (..)
  , pattern VK_STRUCTURE_TYPE_SUBRESOURCE_LAYOUT_2_EXT
  , VkSubresourceLayout2EXT (..)
  , pattern VK_STRUCTURE_TYPE_IMAGE_SUBRESOURCE_2_EXT
  , VkImageSubresource2EXT (..)
  , pattern VK_STRUCTURE_TYPE_IMAGE_COMPRESSION_PROPERTIES_EXT
  , VkImageCompressionPropertiesEXT (..)
  , VkImageCompressionFlagBitsEXT
  , pattern VK_IMAGE_COMPRESSION_DEFAULT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_DEFAULT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_EXPLICIT_EXT
  , pattern VK_IMAGE_COMPRESSION_DISABLED_EXT
  , VkImageCompressionFlagsEXT
  , VkImageCompressionFixedRateFlagBitsEXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_NONE_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_1BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_2BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_3BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_4BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_5BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_6BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_7BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_8BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_9BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_10BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_11BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_12BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_13BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_14BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_15BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_16BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_17BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_18BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_19BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_20BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_21BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_22BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_23BPC_BIT_EXT
  , pattern VK_IMAGE_COMPRESSION_FIXED_RATE_24BPC_BIT_EXT
  , VkImageCompressionFixedRateFlagsEXT
  , pattern VK_ERROR_COMPRESSION_EXHAUSTED_EXT
  , VkGetImageSubresourceLayout2EXT
  , vkFunGetImageSubresourceLayout2EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkImageCompressionFixedRateFlagBitsEXT
import Vulkan.Types.Enum.VkImageCompressionFixedRateFlagsEXT
import Vulkan.Types.Enum.VkImageCompressionFlagBitsEXT
import Vulkan.Types.Enum.VkImageCompressionFlagsEXT
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageCompressionControlEXT
import Vulkan.Types.Struct.VkImageCompressionPropertiesEXT
import Vulkan.Types.Struct.VkImageSubresource2EXT
import Vulkan.Types.Struct.VkPhysicalDeviceImageCompressionControlFeaturesEXT
import Vulkan.Types.Struct.VkSubresourceLayout2EXT
import Vulkan.Types.Command.VkGetImageSubresourceLayout2EXT
import Vulkan.Types.VkFun



pattern VK_EXT_IMAGE_COMPRESSION_CONTROL_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_IMAGE_COMPRESSION_CONTROL_SPEC_VERSION = 1

pattern VK_EXT_IMAGE_COMPRESSION_CONTROL_EXTENSION_NAME :: CString
pattern VK_EXT_IMAGE_COMPRESSION_CONTROL_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_IMAGE_COMPRESSION_CONTROL_EXTENSION_NAME = Ptr ("VK_EXT_image_compression_control\0"##)

#else

module Vulkan.Ext.VK_EXT_image_compression_control where

#endif