{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_image_format_list

module Vulkan.Ext.VK_KHR_image_format_list
  ( pattern VK_KHR_IMAGE_FORMAT_LIST_SPEC_VERSION
  , pattern VK_KHR_IMAGE_FORMAT_LIST_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO_KHR
  , VkImageFormatListCreateInfoKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageFormatListCreateInfoKHR
import Vulkan.Types.VkFun



pattern VK_KHR_IMAGE_FORMAT_LIST_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_IMAGE_FORMAT_LIST_SPEC_VERSION = 1

pattern VK_KHR_IMAGE_FORMAT_LIST_EXTENSION_NAME :: CString
pattern VK_KHR_IMAGE_FORMAT_LIST_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_IMAGE_FORMAT_LIST_EXTENSION_NAME = Ptr ("VK_KHR_image_format_list\0"##)

#else

module Vulkan.Ext.VK_KHR_image_format_list where

#endif