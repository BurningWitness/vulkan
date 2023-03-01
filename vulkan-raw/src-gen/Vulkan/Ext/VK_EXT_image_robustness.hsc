{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_robustness

module Vulkan.Ext.VK_EXT_image_robustness
  ( pattern VK_EXT_IMAGE_ROBUSTNESS_SPEC_VERSION
  , pattern VK_EXT_IMAGE_ROBUSTNESS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES_EXT
  , VkPhysicalDeviceImageRobustnessFeaturesEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceImageRobustnessFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_IMAGE_ROBUSTNESS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_IMAGE_ROBUSTNESS_SPEC_VERSION = 1

pattern VK_EXT_IMAGE_ROBUSTNESS_EXTENSION_NAME :: CString
pattern VK_EXT_IMAGE_ROBUSTNESS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_IMAGE_ROBUSTNESS_EXTENSION_NAME = Ptr ("VK_EXT_image_robustness\0"##)

#else

module Vulkan.Ext.VK_EXT_image_robustness where

#endif