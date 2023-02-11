{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_external_semaphore

module Vulkan.Ext.VK_FUCHSIA_external_semaphore
  ( pattern VK_FUCHSIA_EXTERNAL_SEMAPHORE_SPEC_VERSION
  , pattern VK_FUCHSIA_EXTERNAL_SEMAPHORE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_ZIRCON_HANDLE_INFO_FUCHSIA
  , pattern VK_STRUCTURE_TYPE_SEMAPHORE_GET_ZIRCON_HANDLE_INFO_FUCHSIA
  , pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_ZIRCON_EVENT_BIT_FUCHSIA
  , VkImportSemaphoreZirconHandleInfoFUCHSIA (..)
  , VkSemaphoreGetZirconHandleInfoFUCHSIA (..)
  , VkImportSemaphoreZirconHandleFUCHSIA
  , vkFunImportSemaphoreZirconHandleFUCHSIA
  , VkGetSemaphoreZirconHandleFUCHSIA
  , vkFunGetSemaphoreZirconHandleFUCHSIA
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImportSemaphoreZirconHandleInfoFUCHSIA
import Vulkan.Types.Struct.VkSemaphoreGetZirconHandleInfoFUCHSIA
import Vulkan.Types.Command.VkGetSemaphoreZirconHandleFUCHSIA
import Vulkan.Types.Command.VkImportSemaphoreZirconHandleFUCHSIA
import Vulkan.Types.VkFun



pattern VK_FUCHSIA_EXTERNAL_SEMAPHORE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_FUCHSIA_EXTERNAL_SEMAPHORE_SPEC_VERSION = 1

pattern VK_FUCHSIA_EXTERNAL_SEMAPHORE_EXTENSION_NAME :: CString
pattern VK_FUCHSIA_EXTERNAL_SEMAPHORE_EXTENSION_NAME <- (const False -> True)
  where
    VK_FUCHSIA_EXTERNAL_SEMAPHORE_EXTENSION_NAME = Ptr ("VK_FUCHSIA_external_semaphore\0"##)

#else

module Vulkan.Ext.VK_FUCHSIA_external_semaphore where

#endif