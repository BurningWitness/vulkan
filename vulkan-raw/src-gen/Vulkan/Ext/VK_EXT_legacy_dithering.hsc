{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_legacy_dithering

module Vulkan.Ext.VK_EXT_legacy_dithering
  ( pattern VK_EXT_LEGACY_DITHERING_SPEC_VERSION
  , pattern VK_EXT_LEGACY_DITHERING_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LEGACY_DITHERING_FEATURES_EXT
  , pattern VK_SUBPASS_DESCRIPTION_ENABLE_LEGACY_DITHERING_BIT_EXT
  , VkPhysicalDeviceLegacyDitheringFeaturesEXT (..)
#if VK_VERSION_1_3
  , pattern VK_RENDERING_ENABLE_LEGACY_DITHERING_BIT_EXT
#endif
#if VK_KHR_dynamic_rendering
  , pattern VK_RENDERING_ENABLE_LEGACY_DITHERING_BIT_EXT
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkRenderingFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubpassDescriptionFlagBits
import Vulkan.Types.Struct.VkPhysicalDeviceLegacyDitheringFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_LEGACY_DITHERING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_LEGACY_DITHERING_SPEC_VERSION = 1

pattern VK_EXT_LEGACY_DITHERING_EXTENSION_NAME :: CString
pattern VK_EXT_LEGACY_DITHERING_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_LEGACY_DITHERING_EXTENSION_NAME = Ptr ("VK_EXT_legacy_dithering\0"##)

#else

module Vulkan.Ext.VK_EXT_legacy_dithering where

#endif