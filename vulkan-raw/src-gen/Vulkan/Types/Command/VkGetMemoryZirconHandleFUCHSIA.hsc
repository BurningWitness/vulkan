{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_external_memory

module Vulkan.Types.Command.VkGetMemoryZirconHandleFUCHSIA where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMemoryGetZirconHandleInfoFUCHSIA
import Vulkan.Types.VkFun



type VkGetMemoryZirconHandleFUCHSIA =
          VkDevice -- ^ device
       -> Ptr VkMemoryGetZirconHandleInfoFUCHSIA -- ^ pGetZirconHandleInfo
       -> Ptr ZxHandleT -- ^ pZirconHandle
       -> IO VkResult

vkFunGetMemoryZirconHandleFUCHSIA :: VkFun VkGetMemoryZirconHandleFUCHSIA
vkFunGetMemoryZirconHandleFUCHSIA = VkFun (Ptr ("vkGetMemoryZirconHandleFUCHSIA\0"##))

#else

module Vulkan.Types.Command.VkGetMemoryZirconHandleFUCHSIA where

#endif