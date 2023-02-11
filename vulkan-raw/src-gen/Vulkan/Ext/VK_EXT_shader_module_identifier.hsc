{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_module_identifier

module Vulkan.Ext.VK_EXT_shader_module_identifier
  ( pattern VK_EXT_SHADER_MODULE_IDENTIFIER_SPEC_VERSION
  , pattern VK_EXT_SHADER_MODULE_IDENTIFIER_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_MODULE_IDENTIFIER_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_MODULE_IDENTIFIER_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_MODULE_IDENTIFIER_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_SHADER_MODULE_IDENTIFIER_EXT
  , pattern VK_MAX_SHADER_MODULE_IDENTIFIER_SIZE_EXT
  , VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT (..)
  , VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT (..)
  , VkPipelineShaderStageModuleIdentifierCreateInfoEXT (..)
  , VkShaderModuleIdentifierEXT (..)
  , VkGetShaderModuleIdentifierEXT
  , vkFunGetShaderModuleIdentifierEXT
  , VkGetShaderModuleCreateInfoIdentifierEXT
  , vkFunGetShaderModuleCreateInfoIdentifierEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Constant
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT
import Vulkan.Types.Struct.VkPipelineShaderStageModuleIdentifierCreateInfoEXT
import Vulkan.Types.Struct.VkShaderModuleIdentifierEXT
import Vulkan.Types.Command.VkGetShaderModuleCreateInfoIdentifierEXT
import Vulkan.Types.Command.VkGetShaderModuleIdentifierEXT
import Vulkan.Types.VkFun



pattern VK_EXT_SHADER_MODULE_IDENTIFIER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SHADER_MODULE_IDENTIFIER_SPEC_VERSION = 1

pattern VK_EXT_SHADER_MODULE_IDENTIFIER_EXTENSION_NAME :: CString
pattern VK_EXT_SHADER_MODULE_IDENTIFIER_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SHADER_MODULE_IDENTIFIER_EXTENSION_NAME = Ptr ("VK_EXT_shader_module_identifier\0"##)

#else

module Vulkan.Ext.VK_EXT_shader_module_identifier where

#endif