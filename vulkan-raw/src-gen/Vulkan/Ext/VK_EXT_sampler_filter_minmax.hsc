{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sampler_filter_minmax

module Vulkan.Ext.VK_EXT_sampler_filter_minmax
  ( pattern VK_EXT_SAMPLER_FILTER_MINMAX_SPEC_VERSION
  , pattern VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO_EXT
  , pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT
  , pattern VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE_EXT
  , pattern VK_SAMPLER_REDUCTION_MODE_MIN_EXT
  , pattern VK_SAMPLER_REDUCTION_MODE_MAX_EXT
  , VkSamplerReductionModeEXT
  , VkSamplerReductionModeCreateInfoEXT
  , VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFormatFeatureFlagBits
import Vulkan.Types.Enum.VkSamplerReductionMode
import Vulkan.Types.Enum.VkSamplerReductionModeEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
import Vulkan.Types.Struct.VkSamplerReductionModeCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_SAMPLER_FILTER_MINMAX_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SAMPLER_FILTER_MINMAX_SPEC_VERSION = 2

pattern VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME :: CString
pattern VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME = Ptr ("VK_EXT_sampler_filter_minmax\0"##)

#else

module Vulkan.Ext.VK_EXT_sampler_filter_minmax where

#endif