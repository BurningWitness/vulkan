{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_private_data

module Vulkan.Ext.VK_EXT_private_data
  ( pattern VK_EXT_PRIVATE_DATA_SPEC_VERSION
  , pattern VK_EXT_PRIVATE_DATA_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO_EXT
  , pattern VK_OBJECT_TYPE_PRIVATE_DATA_SLOT_EXT
  , VkPhysicalDevicePrivateDataFeaturesEXT
  , VkDevicePrivateDataCreateInfoEXT
  , VkPrivateDataSlotCreateInfoEXT
  , VkPrivateDataSlotEXT
  , VkPrivateDataSlotCreateFlagsEXT
  , VkCreatePrivateDataSlotEXT
  , vkFunCreatePrivateDataSlotEXT
  , VkDestroyPrivateDataSlotEXT
  , vkFunDestroyPrivateDataSlotEXT
  , VkSetPrivateDataEXT
  , vkFunSetPrivateDataEXT
  , VkGetPrivateDataEXT
  , vkFunGetPrivateDataEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkPrivateDataSlotCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDevicePrivateDataCreateInfoEXT
import Vulkan.Types.Struct.VkPhysicalDevicePrivateDataFeaturesEXT
import Vulkan.Types.Struct.VkPrivateDataSlotCreateInfoEXT
import Vulkan.Types.Command.VkCreatePrivateDataSlotEXT
import Vulkan.Types.Command.VkDestroyPrivateDataSlotEXT
import Vulkan.Types.Command.VkGetPrivateDataEXT
import Vulkan.Types.Command.VkSetPrivateDataEXT
import Vulkan.Types.VkFun



pattern VK_EXT_PRIVATE_DATA_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_PRIVATE_DATA_SPEC_VERSION = 1

pattern VK_EXT_PRIVATE_DATA_EXTENSION_NAME :: CString
pattern VK_EXT_PRIVATE_DATA_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_PRIVATE_DATA_EXTENSION_NAME = Ptr ("VK_EXT_private_data\0"##)

#else

module Vulkan.Ext.VK_EXT_private_data where

#endif