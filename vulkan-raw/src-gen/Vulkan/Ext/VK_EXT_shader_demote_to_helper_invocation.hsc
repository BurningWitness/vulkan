{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_demote_to_helper_invocation

module Vulkan.Ext.VK_EXT_shader_demote_to_helper_invocation
  ( pattern VK_EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_SPEC_VERSION
  , pattern VK_EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES_EXT
  , VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_SPEC_VERSION = 1

pattern VK_EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_EXTENSION_NAME :: CString
pattern VK_EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_EXTENSION_NAME = Ptr ("VK_EXT_shader_demote_to_helper_invocation\0"##)

#else

module Vulkan.Ext.VK_EXT_shader_demote_to_helper_invocation where

#endif