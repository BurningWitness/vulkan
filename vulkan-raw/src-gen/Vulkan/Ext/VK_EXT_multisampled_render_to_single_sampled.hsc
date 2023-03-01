{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_multisampled_render_to_single_sampled

module Vulkan.Ext.VK_EXT_multisampled_render_to_single_sampled
  ( pattern VK_EXT_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_SPEC_VERSION
  , pattern VK_EXT_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_SUBPASS_RESOLVE_PERFORMANCE_QUERY_EXT
  , pattern VK_STRUCTURE_TYPE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_INFO_EXT
  , pattern VK_IMAGE_CREATE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_BIT_EXT
  , VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT (..)
  , VkSubpassResolvePerformanceQueryEXT (..)
  , VkMultisampledRenderToSingleSampledInfoEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkImageCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkMultisampledRenderToSingleSampledInfoEXT
import Vulkan.Types.Struct.VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT
import Vulkan.Types.Struct.VkSubpassResolvePerformanceQueryEXT
import Vulkan.Types.VkFun



pattern VK_EXT_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_SPEC_VERSION = 1

pattern VK_EXT_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_EXTENSION_NAME :: CString
pattern VK_EXT_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_EXTENSION_NAME = Ptr ("VK_EXT_multisampled_render_to_single_sampled\0"##)

#else

module Vulkan.Ext.VK_EXT_multisampled_render_to_single_sampled where

#endif