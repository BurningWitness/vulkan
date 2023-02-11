{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_properties

module Vulkan.Ext.VK_EXT_pipeline_properties
  ( pattern VK_EXT_PIPELINE_PROPERTIES_SPEC_VERSION
  , pattern VK_EXT_PIPELINE_PROPERTIES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PIPELINE_PROPERTIES_IDENTIFIER_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_PROPERTIES_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_INFO_EXT
  , VkPipelineInfoEXT
  , VkPipelinePropertiesIdentifierEXT (..)
  , VkPhysicalDevicePipelinePropertiesFeaturesEXT (..)
  , VkGetPipelinePropertiesEXT
  , vkFunGetPipelinePropertiesEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePipelinePropertiesFeaturesEXT
import Vulkan.Types.Struct.VkPipelineInfoEXT
import Vulkan.Types.Struct.VkPipelinePropertiesIdentifierEXT
import Vulkan.Types.Command.VkGetPipelinePropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_PIPELINE_PROPERTIES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_PIPELINE_PROPERTIES_SPEC_VERSION = 1

pattern VK_EXT_PIPELINE_PROPERTIES_EXTENSION_NAME :: CString
pattern VK_EXT_PIPELINE_PROPERTIES_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_PIPELINE_PROPERTIES_EXTENSION_NAME = Ptr ("VK_EXT_pipeline_properties\0"##)

#else

module Vulkan.Ext.VK_EXT_pipeline_properties where

#endif