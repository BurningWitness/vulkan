{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_external_semaphore

module Vulkan.Types.Command.VkImportSemaphoreZirconHandleFUCHSIA where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImportSemaphoreZirconHandleInfoFUCHSIA
import Vulkan.Types.VkFun



type VkImportSemaphoreZirconHandleFUCHSIA =
          VkDevice -- ^ device
       -> Ptr VkImportSemaphoreZirconHandleInfoFUCHSIA -- ^ pImportSemaphoreZirconHandleInfo
       -> IO VkResult

vkFunImportSemaphoreZirconHandleFUCHSIA :: VkFun VkImportSemaphoreZirconHandleFUCHSIA
vkFunImportSemaphoreZirconHandleFUCHSIA = VkFun (Ptr ("vkImportSemaphoreZirconHandleFUCHSIA\0"##))

#else

module Vulkan.Types.Command.VkImportSemaphoreZirconHandleFUCHSIA where

#endif