{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_external_memory

module Vulkan.Ext.VK_FUCHSIA_external_memory
  ( pattern VK_FUCHSIA_EXTERNAL_MEMORY_SPEC_VERSION
  , pattern VK_FUCHSIA_EXTERNAL_MEMORY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMPORT_MEMORY_ZIRCON_HANDLE_INFO_FUCHSIA
  , pattern VK_STRUCTURE_TYPE_MEMORY_ZIRCON_HANDLE_PROPERTIES_FUCHSIA
  , pattern VK_STRUCTURE_TYPE_MEMORY_GET_ZIRCON_HANDLE_INFO_FUCHSIA
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_ZIRCON_VMO_BIT_FUCHSIA
  , VkImportMemoryZirconHandleInfoFUCHSIA (..)
  , VkMemoryZirconHandlePropertiesFUCHSIA (..)
  , VkMemoryGetZirconHandleInfoFUCHSIA (..)
  , VkGetMemoryZirconHandleFUCHSIA
  , vkFunGetMemoryZirconHandleFUCHSIA
  , VkGetMemoryZirconHandlePropertiesFUCHSIA
  , vkFunGetMemoryZirconHandlePropertiesFUCHSIA
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImportMemoryZirconHandleInfoFUCHSIA
import Vulkan.Types.Struct.VkMemoryGetZirconHandleInfoFUCHSIA
import Vulkan.Types.Struct.VkMemoryZirconHandlePropertiesFUCHSIA
import Vulkan.Types.Command.VkGetMemoryZirconHandleFUCHSIA
import Vulkan.Types.Command.VkGetMemoryZirconHandlePropertiesFUCHSIA
import Vulkan.Types.VkFun



pattern VK_FUCHSIA_EXTERNAL_MEMORY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_FUCHSIA_EXTERNAL_MEMORY_SPEC_VERSION = 1

pattern VK_FUCHSIA_EXTERNAL_MEMORY_EXTENSION_NAME :: CString
pattern VK_FUCHSIA_EXTERNAL_MEMORY_EXTENSION_NAME <- (const False -> True)
  where
    VK_FUCHSIA_EXTERNAL_MEMORY_EXTENSION_NAME = Ptr ("VK_FUCHSIA_external_memory\0"##)

#else

module Vulkan.Ext.VK_FUCHSIA_external_memory where

#endif