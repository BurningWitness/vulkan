{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_SEC_amigo_profiling

module Vulkan.Ext.VK_SEC_amigo_profiling
  ( pattern VK_SEC_AMIGO_PROFILING_SPEC_VERSION
  , pattern VK_SEC_AMIGO_PROFILING_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_AMIGO_PROFILING_FEATURES_SEC
  , pattern VK_STRUCTURE_TYPE_AMIGO_PROFILING_SUBMIT_INFO_SEC
  , VkPhysicalDeviceAmigoProfilingFeaturesSEC (..)
  , VkAmigoProfilingSubmitInfoSEC (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAmigoProfilingSubmitInfoSEC
import Vulkan.Types.Struct.VkPhysicalDeviceAmigoProfilingFeaturesSEC
import Vulkan.Types.VkFun



pattern VK_SEC_AMIGO_PROFILING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_SEC_AMIGO_PROFILING_SPEC_VERSION = 1

pattern VK_SEC_AMIGO_PROFILING_EXTENSION_NAME :: CString
pattern VK_SEC_AMIGO_PROFILING_EXTENSION_NAME <- (const False -> True)
  where
    VK_SEC_AMIGO_PROFILING_EXTENSION_NAME = Ptr ("VK_SEC_amigo_profiling\0"##)

#else

module Vulkan.Ext.VK_SEC_amigo_profiling where

#endif