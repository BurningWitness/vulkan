{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_conservative_rasterization

module Vulkan.Ext.VK_EXT_conservative_rasterization
  ( pattern VK_EXT_CONSERVATIVE_RASTERIZATION_SPEC_VERSION
  , pattern VK_EXT_CONSERVATIVE_RASTERIZATION_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT
  , VkPhysicalDeviceConservativeRasterizationPropertiesEXT (..)
  , VkPipelineRasterizationConservativeStateCreateInfoEXT (..)
  , VkPipelineRasterizationConservativeStateCreateFlagsEXT
  , VkConservativeRasterizationModeEXT
  , pattern VK_CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT
  , pattern VK_CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT
  , pattern VK_CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkConservativeRasterizationModeEXT
import Vulkan.Types.Enum.VkPipelineRasterizationConservativeStateCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceConservativeRasterizationPropertiesEXT
import Vulkan.Types.Struct.VkPipelineRasterizationConservativeStateCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_CONSERVATIVE_RASTERIZATION_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_CONSERVATIVE_RASTERIZATION_SPEC_VERSION = 1

pattern VK_EXT_CONSERVATIVE_RASTERIZATION_EXTENSION_NAME :: CString
pattern VK_EXT_CONSERVATIVE_RASTERIZATION_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_CONSERVATIVE_RASTERIZATION_EXTENSION_NAME = Ptr ("VK_EXT_conservative_rasterization\0"##)

#else

module Vulkan.Ext.VK_EXT_conservative_rasterization where

#endif