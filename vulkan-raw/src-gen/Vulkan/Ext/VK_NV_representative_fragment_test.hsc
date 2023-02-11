{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_representative_fragment_test

module Vulkan.Ext.VK_NV_representative_fragment_test
  ( pattern VK_NV_REPRESENTATIVE_FRAGMENT_TEST_SPEC_VERSION
  , pattern VK_NV_REPRESENTATIVE_FRAGMENT_TEST_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV
  , VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV (..)
  , VkPipelineRepresentativeFragmentTestStateCreateInfoNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV
import Vulkan.Types.Struct.VkPipelineRepresentativeFragmentTestStateCreateInfoNV
import Vulkan.Types.VkFun



pattern VK_NV_REPRESENTATIVE_FRAGMENT_TEST_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_REPRESENTATIVE_FRAGMENT_TEST_SPEC_VERSION = 2

pattern VK_NV_REPRESENTATIVE_FRAGMENT_TEST_EXTENSION_NAME :: CString
pattern VK_NV_REPRESENTATIVE_FRAGMENT_TEST_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_REPRESENTATIVE_FRAGMENT_TEST_EXTENSION_NAME = Ptr ("VK_NV_representative_fragment_test\0"##)

#else

module Vulkan.Ext.VK_NV_representative_fragment_test where

#endif