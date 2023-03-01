{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sample_locations

module Vulkan.Ext.VK_EXT_sample_locations
  ( pattern VK_EXT_SAMPLE_LOCATIONS_SPEC_VERSION
  , pattern VK_EXT_SAMPLE_LOCATIONS_EXTENSION_NAME
  , pattern VK_IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT
  , pattern VK_STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_MULTISAMPLE_PROPERTIES_EXT
  , pattern VK_DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT
  , VkSampleLocationEXT (..)
  , VkSampleLocationsInfoEXT (..)
  , VkAttachmentSampleLocationsEXT (..)
  , VkSubpassSampleLocationsEXT (..)
  , VkRenderPassSampleLocationsBeginInfoEXT (..)
  , VkPipelineSampleLocationsStateCreateInfoEXT (..)
  , VkPhysicalDeviceSampleLocationsPropertiesEXT (..)
  , VkMultisamplePropertiesEXT (..)
  , VkCmdSetSampleLocationsEXT
  , vkFunCmdSetSampleLocationsEXT
  , VkGetPhysicalDeviceMultisamplePropertiesEXT
  , vkFunGetPhysicalDeviceMultisamplePropertiesEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkImageCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAttachmentSampleLocationsEXT
import Vulkan.Types.Struct.VkMultisamplePropertiesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceSampleLocationsPropertiesEXT
import Vulkan.Types.Struct.VkPipelineSampleLocationsStateCreateInfoEXT
import Vulkan.Types.Struct.VkRenderPassSampleLocationsBeginInfoEXT
import Vulkan.Types.Struct.VkSampleLocationEXT
import Vulkan.Types.Struct.VkSampleLocationsInfoEXT
import Vulkan.Types.Struct.VkSubpassSampleLocationsEXT
import Vulkan.Types.Command.VkCmdSetSampleLocationsEXT
import Vulkan.Types.Command.VkGetPhysicalDeviceMultisamplePropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_SAMPLE_LOCATIONS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SAMPLE_LOCATIONS_SPEC_VERSION = 1

pattern VK_EXT_SAMPLE_LOCATIONS_EXTENSION_NAME :: CString
pattern VK_EXT_SAMPLE_LOCATIONS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SAMPLE_LOCATIONS_EXTENSION_NAME = Ptr ("VK_EXT_sample_locations\0"##)

#else

module Vulkan.Ext.VK_EXT_sample_locations where

#endif