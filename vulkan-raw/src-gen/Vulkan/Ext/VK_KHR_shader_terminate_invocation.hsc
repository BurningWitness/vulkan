{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_terminate_invocation

module Vulkan.Ext.VK_KHR_shader_terminate_invocation
  ( pattern VK_KHR_SHADER_TERMINATE_INVOCATION_SPEC_VERSION
  , pattern VK_KHR_SHADER_TERMINATE_INVOCATION_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES_KHR
  , VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SHADER_TERMINATE_INVOCATION_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SHADER_TERMINATE_INVOCATION_SPEC_VERSION = 1

pattern VK_KHR_SHADER_TERMINATE_INVOCATION_EXTENSION_NAME :: CString
pattern VK_KHR_SHADER_TERMINATE_INVOCATION_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SHADER_TERMINATE_INVOCATION_EXTENSION_NAME = Ptr ("VK_KHR_shader_terminate_invocation\0"##)

#else

module Vulkan.Ext.VK_KHR_shader_terminate_invocation where

#endif