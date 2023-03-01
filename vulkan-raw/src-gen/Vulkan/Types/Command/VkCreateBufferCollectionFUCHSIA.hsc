{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Command.VkCreateBufferCollectionFUCHSIA where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkBufferCollectionCreateInfoFUCHSIA
import Vulkan.Types.VkFun



type VkCreateBufferCollectionFUCHSIA =
          VkDevice -- ^ device
       -> Ptr VkBufferCollectionCreateInfoFUCHSIA -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkBufferCollectionFUCHSIA -- ^ pCollection
       -> IO VkResult

vkFunCreateBufferCollectionFUCHSIA :: VkFun VkCreateBufferCollectionFUCHSIA
vkFunCreateBufferCollectionFUCHSIA = VkFun (Ptr ("vkCreateBufferCollectionFUCHSIA\0"##))

#else

module Vulkan.Types.Command.VkCreateBufferCollectionFUCHSIA where

#endif