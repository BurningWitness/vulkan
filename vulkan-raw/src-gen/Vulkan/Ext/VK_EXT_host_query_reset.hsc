{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_host_query_reset

module Vulkan.Ext.VK_EXT_host_query_reset
  ( pattern VK_EXT_HOST_QUERY_RESET_SPEC_VERSION
  , pattern VK_EXT_HOST_QUERY_RESET_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES_EXT
  , VkPhysicalDeviceHostQueryResetFeaturesEXT
  , VkResetQueryPoolEXT
  , vkFunResetQueryPoolEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceHostQueryResetFeaturesEXT
import Vulkan.Types.Command.VkResetQueryPoolEXT
import Vulkan.Types.VkFun



pattern VK_EXT_HOST_QUERY_RESET_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_HOST_QUERY_RESET_SPEC_VERSION = 1

pattern VK_EXT_HOST_QUERY_RESET_EXTENSION_NAME :: CString
pattern VK_EXT_HOST_QUERY_RESET_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_HOST_QUERY_RESET_EXTENSION_NAME = Ptr ("VK_EXT_host_query_reset\0"##)

#else

module Vulkan.Ext.VK_EXT_host_query_reset where

#endif