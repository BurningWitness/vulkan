{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetBufferMemoryRequirements where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMemoryRequirements
import Vulkan.Types.VkFun



type VkGetBufferMemoryRequirements =
          VkDevice -- ^ device
       -> VkBuffer -- ^ buffer
       -> Ptr VkMemoryRequirements -- ^ pMemoryRequirements
       -> IO ()

vkFunGetBufferMemoryRequirements :: VkFun VkGetBufferMemoryRequirements
vkFunGetBufferMemoryRequirements = VkFun (Ptr ("vkGetBufferMemoryRequirements\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetBufferMemoryRequirements"
  vkGetBufferMemoryRequirements
    :: VkGetBufferMemoryRequirements

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetBufferMemoryRequirements"
  vkGetBufferMemoryRequirementsUnsafe
    :: VkGetBufferMemoryRequirements