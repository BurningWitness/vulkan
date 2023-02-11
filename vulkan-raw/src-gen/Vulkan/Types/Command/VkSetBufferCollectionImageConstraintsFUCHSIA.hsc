{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Command.VkSetBufferCollectionImageConstraintsFUCHSIA where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageConstraintsInfoFUCHSIA
import Vulkan.Types.VkFun



type VkSetBufferCollectionImageConstraintsFUCHSIA =
          VkDevice -- ^ device
       -> VkBufferCollectionFUCHSIA -- ^ collection
       -> Ptr VkImageConstraintsInfoFUCHSIA -- ^ pImageConstraintsInfo
       -> IO VkResult

vkFunSetBufferCollectionImageConstraintsFUCHSIA :: VkFun VkSetBufferCollectionImageConstraintsFUCHSIA
vkFunSetBufferCollectionImageConstraintsFUCHSIA = VkFun (Ptr ("vkSetBufferCollectionImageConstraintsFUCHSIA\0"##))

#else

module Vulkan.Types.Command.VkSetBufferCollectionImageConstraintsFUCHSIA where

#endif