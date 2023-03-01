{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Command.VkGetBufferCollectionPropertiesFUCHSIA where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferCollectionPropertiesFUCHSIA
import Vulkan.Types.VkFun



type VkGetBufferCollectionPropertiesFUCHSIA =
          VkDevice -- ^ device
       -> VkBufferCollectionFUCHSIA -- ^ collection
       -> Ptr VkBufferCollectionPropertiesFUCHSIA -- ^ pProperties
       -> IO VkResult

vkFunGetBufferCollectionPropertiesFUCHSIA :: VkFun VkGetBufferCollectionPropertiesFUCHSIA
vkFunGetBufferCollectionPropertiesFUCHSIA = VkFun (Ptr ("vkGetBufferCollectionPropertiesFUCHSIA\0"##))

#else

module Vulkan.Types.Command.VkGetBufferCollectionPropertiesFUCHSIA where

#endif