{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_pipeline_compiler_control

module Vulkan.Ext.VK_AMD_pipeline_compiler_control
  ( pattern VK_AMD_PIPELINE_COMPILER_CONTROL_SPEC_VERSION
  , pattern VK_AMD_PIPELINE_COMPILER_CONTROL_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD
  , VkPipelineCompilerControlFlagBitsAMD
  , VkPipelineCompilerControlFlagsAMD
  , VkPipelineCompilerControlCreateInfoAMD (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineCompilerControlFlagBitsAMD
import Vulkan.Types.Enum.VkPipelineCompilerControlFlagsAMD
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPipelineCompilerControlCreateInfoAMD
import Vulkan.Types.VkFun



pattern VK_AMD_PIPELINE_COMPILER_CONTROL_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_PIPELINE_COMPILER_CONTROL_SPEC_VERSION = 1

pattern VK_AMD_PIPELINE_COMPILER_CONTROL_EXTENSION_NAME :: CString
pattern VK_AMD_PIPELINE_COMPILER_CONTROL_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_PIPELINE_COMPILER_CONTROL_EXTENSION_NAME = Ptr ("VK_AMD_pipeline_compiler_control\0"##)

#else

module Vulkan.Ext.VK_AMD_pipeline_compiler_control where

#endif