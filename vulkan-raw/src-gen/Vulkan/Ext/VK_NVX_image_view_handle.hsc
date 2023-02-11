{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NVX_image_view_handle

module Vulkan.Ext.VK_NVX_image_view_handle
  ( pattern VK_NVX_IMAGE_VIEW_HANDLE_SPEC_VERSION
  , pattern VK_NVX_IMAGE_VIEW_HANDLE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMAGE_VIEW_HANDLE_INFO_NVX
  , pattern VK_STRUCTURE_TYPE_IMAGE_VIEW_ADDRESS_PROPERTIES_NVX
  , VkImageViewHandleInfoNVX (..)
  , VkImageViewAddressPropertiesNVX (..)
  , VkGetImageViewHandleNVX
  , vkFunGetImageViewHandleNVX
  , VkGetImageViewAddressNVX
  , vkFunGetImageViewAddressNVX
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageViewAddressPropertiesNVX
import Vulkan.Types.Struct.VkImageViewHandleInfoNVX
import Vulkan.Types.Command.VkGetImageViewAddressNVX
import Vulkan.Types.Command.VkGetImageViewHandleNVX
import Vulkan.Types.VkFun



pattern VK_NVX_IMAGE_VIEW_HANDLE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NVX_IMAGE_VIEW_HANDLE_SPEC_VERSION = 2

pattern VK_NVX_IMAGE_VIEW_HANDLE_EXTENSION_NAME :: CString
pattern VK_NVX_IMAGE_VIEW_HANDLE_EXTENSION_NAME <- (const False -> True)
  where
    VK_NVX_IMAGE_VIEW_HANDLE_EXTENSION_NAME = Ptr ("VK_NVX_image_view_handle\0"##)

#else

module Vulkan.Ext.VK_NVX_image_view_handle where

#endif