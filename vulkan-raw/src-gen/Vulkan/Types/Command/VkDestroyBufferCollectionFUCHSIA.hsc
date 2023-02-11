{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Command.VkDestroyBufferCollectionFUCHSIA where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyBufferCollectionFUCHSIA =
          VkDevice -- ^ device
       -> VkBufferCollectionFUCHSIA -- ^ collection
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyBufferCollectionFUCHSIA :: VkFun VkDestroyBufferCollectionFUCHSIA
vkFunDestroyBufferCollectionFUCHSIA = VkFun (Ptr ("vkDestroyBufferCollectionFUCHSIA\0"##))

#else

module Vulkan.Types.Command.VkDestroyBufferCollectionFUCHSIA where

#endif