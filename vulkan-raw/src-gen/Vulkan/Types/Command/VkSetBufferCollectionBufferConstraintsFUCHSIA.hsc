{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Command.VkSetBufferCollectionBufferConstraintsFUCHSIA where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferConstraintsInfoFUCHSIA
import Vulkan.Types.VkFun



type VkSetBufferCollectionBufferConstraintsFUCHSIA =
          VkDevice -- ^ device
       -> VkBufferCollectionFUCHSIA -- ^ collection
       -> Ptr VkBufferConstraintsInfoFUCHSIA -- ^ pBufferConstraintsInfo
       -> IO VkResult

vkFunSetBufferCollectionBufferConstraintsFUCHSIA :: VkFun VkSetBufferCollectionBufferConstraintsFUCHSIA
vkFunSetBufferCollectionBufferConstraintsFUCHSIA = VkFun (Ptr ("vkSetBufferCollectionBufferConstraintsFUCHSIA\0"##))

#else

module Vulkan.Types.Command.VkSetBufferCollectionBufferConstraintsFUCHSIA where

#endif