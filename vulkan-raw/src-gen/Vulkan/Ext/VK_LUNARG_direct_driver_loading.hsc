{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_LUNARG_direct_driver_loading

module Vulkan.Ext.VK_LUNARG_direct_driver_loading
  ( pattern VK_LUNARG_DIRECT_DRIVER_LOADING_SPEC_VERSION
  , pattern VK_LUNARG_DIRECT_DRIVER_LOADING_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DIRECT_DRIVER_LOADING_INFO_LUNARG
  , pattern VK_STRUCTURE_TYPE_DIRECT_DRIVER_LOADING_LIST_LUNARG
  , VkDirectDriverLoadingFlagsLUNARG
  , VkDirectDriverLoadingModeLUNARG
  , pattern VK_DIRECT_DRIVER_LOADING_MODE_EXCLUSIVE_LUNARG
  , pattern VK_DIRECT_DRIVER_LOADING_MODE_INCLUSIVE_LUNARG
  , VkDirectDriverLoadingInfoLUNARG (..)
  , VkDirectDriverLoadingListLUNARG (..)
  , PFN_vkGetInstanceProcAddrLUNARG
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDirectDriverLoadingFlagsLUNARG
import Vulkan.Types.Enum.VkDirectDriverLoadingModeLUNARG
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.FuncPointer.PFN_vkGetInstanceProcAddrLUNARG
import Vulkan.Types.Struct.VkDirectDriverLoadingInfoLUNARG
import Vulkan.Types.Struct.VkDirectDriverLoadingListLUNARG
import Vulkan.Types.VkFun



pattern VK_LUNARG_DIRECT_DRIVER_LOADING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_LUNARG_DIRECT_DRIVER_LOADING_SPEC_VERSION = 1

pattern VK_LUNARG_DIRECT_DRIVER_LOADING_EXTENSION_NAME :: CString
pattern VK_LUNARG_DIRECT_DRIVER_LOADING_EXTENSION_NAME <- (const False -> True)
  where
    VK_LUNARG_DIRECT_DRIVER_LOADING_EXTENSION_NAME = Ptr ("VK_LUNARG_direct_driver_loading\0"##)

#else

module Vulkan.Ext.VK_LUNARG_direct_driver_loading where

#endif