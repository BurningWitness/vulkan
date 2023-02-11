{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_external_memory

module Vulkan.Types.Command.VkGetMemoryZirconHandlePropertiesFUCHSIA where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMemoryZirconHandlePropertiesFUCHSIA
import Vulkan.Types.VkFun



type VkGetMemoryZirconHandlePropertiesFUCHSIA =
          VkDevice -- ^ device
       -> VkExternalMemoryHandleTypeFlagBits -- ^ handleType
       -> ZxHandleT -- ^ zirconHandle
       -> Ptr VkMemoryZirconHandlePropertiesFUCHSIA -- ^ pMemoryZirconHandleProperties
       -> IO VkResult

vkFunGetMemoryZirconHandlePropertiesFUCHSIA :: VkFun VkGetMemoryZirconHandlePropertiesFUCHSIA
vkFunGetMemoryZirconHandlePropertiesFUCHSIA = VkFun (Ptr ("vkGetMemoryZirconHandlePropertiesFUCHSIA\0"##))

#else

module Vulkan.Types.Command.VkGetMemoryZirconHandlePropertiesFUCHSIA where

#endif