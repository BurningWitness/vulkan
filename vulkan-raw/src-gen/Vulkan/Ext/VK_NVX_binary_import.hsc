{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NVX_binary_import

module Vulkan.Ext.VK_NVX_binary_import
  ( pattern VK_NVX_BINARY_IMPORT_SPEC_VERSION
  , pattern VK_NVX_BINARY_IMPORT_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_CU_MODULE_CREATE_INFO_NVX
  , pattern VK_STRUCTURE_TYPE_CU_FUNCTION_CREATE_INFO_NVX
  , pattern VK_STRUCTURE_TYPE_CU_LAUNCH_INFO_NVX
  , pattern VK_OBJECT_TYPE_CU_MODULE_NVX
  , pattern VK_OBJECT_TYPE_CU_FUNCTION_NVX
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_CU_MODULE_NVX_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_CU_FUNCTION_NVX_EXT
  , VkCuModuleNVX_T
  , VkCuModuleNVX
  , VkCuFunctionNVX_T
  , VkCuFunctionNVX
  , VkCuModuleCreateInfoNVX (..)
  , VkCuFunctionCreateInfoNVX (..)
  , VkCuLaunchInfoNVX (..)
  , VkCreateCuModuleNVX
  , vkFunCreateCuModuleNVX
  , VkCreateCuFunctionNVX
  , vkFunCreateCuFunctionNVX
  , VkDestroyCuModuleNVX
  , vkFunDestroyCuModuleNVX
  , VkDestroyCuFunctionNVX
  , vkFunDestroyCuFunctionNVX
  , VkCmdCuLaunchKernelNVX
  , vkFunCmdCuLaunchKernelNVX
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDebugReportObjectTypeEXT
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCuFunctionCreateInfoNVX
import Vulkan.Types.Struct.VkCuLaunchInfoNVX
import Vulkan.Types.Struct.VkCuModuleCreateInfoNVX
import Vulkan.Types.Command.VkCmdCuLaunchKernelNVX
import Vulkan.Types.Command.VkCreateCuFunctionNVX
import Vulkan.Types.Command.VkCreateCuModuleNVX
import Vulkan.Types.Command.VkDestroyCuFunctionNVX
import Vulkan.Types.Command.VkDestroyCuModuleNVX
import Vulkan.Types.VkFun



pattern VK_NVX_BINARY_IMPORT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NVX_BINARY_IMPORT_SPEC_VERSION = 1

pattern VK_NVX_BINARY_IMPORT_EXTENSION_NAME :: CString
pattern VK_NVX_BINARY_IMPORT_EXTENSION_NAME <- (const False -> True)
  where
    VK_NVX_BINARY_IMPORT_EXTENSION_NAME = Ptr ("VK_NVX_binary_import\0"##)

#else

module Vulkan.Ext.VK_NVX_binary_import where

#endif