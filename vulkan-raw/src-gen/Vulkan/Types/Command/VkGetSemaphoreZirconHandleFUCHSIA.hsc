{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_external_semaphore

module Vulkan.Types.Command.VkGetSemaphoreZirconHandleFUCHSIA where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSemaphoreGetZirconHandleInfoFUCHSIA
import Vulkan.Types.VkFun



type VkGetSemaphoreZirconHandleFUCHSIA =
          VkDevice -- ^ device
       -> Ptr VkSemaphoreGetZirconHandleInfoFUCHSIA -- ^ pGetZirconHandleInfo
       -> Ptr ZxHandleT -- ^ pZirconHandle
       -> IO VkResult

vkFunGetSemaphoreZirconHandleFUCHSIA :: VkFun VkGetSemaphoreZirconHandleFUCHSIA
vkFunGetSemaphoreZirconHandleFUCHSIA = VkFun (Ptr ("vkGetSemaphoreZirconHandleFUCHSIA\0"##))

#else

module Vulkan.Types.Command.VkGetSemaphoreZirconHandleFUCHSIA where

#endif