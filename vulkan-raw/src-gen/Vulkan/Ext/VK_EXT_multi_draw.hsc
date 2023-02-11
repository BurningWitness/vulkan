{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_multi_draw

module Vulkan.Ext.VK_EXT_multi_draw
  ( pattern VK_EXT_MULTI_DRAW_SPEC_VERSION
  , pattern VK_EXT_MULTI_DRAW_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTI_DRAW_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTI_DRAW_PROPERTIES_EXT
  , VkPhysicalDeviceMultiDrawFeaturesEXT (..)
  , VkPhysicalDeviceMultiDrawPropertiesEXT (..)
  , VkCmdDrawMultiEXT
  , vkFunCmdDrawMultiEXT
  , VkCmdDrawMultiIndexedEXT
  , vkFunCmdDrawMultiIndexedEXT
  , VkMultiDrawInfoEXT (..)
  , VkMultiDrawIndexedInfoEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkMultiDrawIndexedInfoEXT
import Vulkan.Types.Struct.VkMultiDrawInfoEXT
import Vulkan.Types.Struct.VkPhysicalDeviceMultiDrawFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceMultiDrawPropertiesEXT
import Vulkan.Types.Command.VkCmdDrawMultiEXT
import Vulkan.Types.Command.VkCmdDrawMultiIndexedEXT
import Vulkan.Types.VkFun



pattern VK_EXT_MULTI_DRAW_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_MULTI_DRAW_SPEC_VERSION = 1

pattern VK_EXT_MULTI_DRAW_EXTENSION_NAME :: CString
pattern VK_EXT_MULTI_DRAW_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_MULTI_DRAW_EXTENSION_NAME = Ptr ("VK_EXT_multi_draw\0"##)

#else

module Vulkan.Ext.VK_EXT_multi_draw where

#endif