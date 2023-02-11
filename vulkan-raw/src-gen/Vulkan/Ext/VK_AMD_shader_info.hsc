{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_shader_info

module Vulkan.Ext.VK_AMD_shader_info
  ( pattern VK_AMD_SHADER_INFO_SPEC_VERSION
  , pattern VK_AMD_SHADER_INFO_EXTENSION_NAME
  , VkShaderInfoTypeAMD
  , pattern VK_SHADER_INFO_TYPE_STATISTICS_AMD
  , pattern VK_SHADER_INFO_TYPE_BINARY_AMD
  , pattern VK_SHADER_INFO_TYPE_DISASSEMBLY_AMD
  , VkShaderResourceUsageAMD (..)
  , VkShaderStatisticsInfoAMD (..)
  , VkGetShaderInfoAMD
  , vkFunGetShaderInfoAMD
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkShaderInfoTypeAMD
import Vulkan.Types.Struct.VkShaderResourceUsageAMD
import Vulkan.Types.Struct.VkShaderStatisticsInfoAMD
import Vulkan.Types.Command.VkGetShaderInfoAMD
import Vulkan.Types.VkFun



pattern VK_AMD_SHADER_INFO_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_SHADER_INFO_SPEC_VERSION = 1

pattern VK_AMD_SHADER_INFO_EXTENSION_NAME :: CString
pattern VK_AMD_SHADER_INFO_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_SHADER_INFO_EXTENSION_NAME = Ptr ("VK_AMD_shader_info\0"##)

#else

module Vulkan.Ext.VK_AMD_shader_info where

#endif