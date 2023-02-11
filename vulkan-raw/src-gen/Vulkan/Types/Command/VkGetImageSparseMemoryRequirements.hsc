{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetImageSparseMemoryRequirements where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSparseImageMemoryRequirements
import Vulkan.Types.VkFun



type VkGetImageSparseMemoryRequirements =
          VkDevice -- ^ device
       -> VkImage -- ^ image
       -> Ptr #{type uint32_t} -- ^ pSparseMemoryRequirementCount
       -> Ptr VkSparseImageMemoryRequirements -- ^ pSparseMemoryRequirements
       -> IO ()

vkFunGetImageSparseMemoryRequirements :: VkFun VkGetImageSparseMemoryRequirements
vkFunGetImageSparseMemoryRequirements = VkFun (Ptr ("vkGetImageSparseMemoryRequirements\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetImageSparseMemoryRequirements"
  vkGetImageSparseMemoryRequirements
    :: VkGetImageSparseMemoryRequirements

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetImageSparseMemoryRequirements"
  vkGetImageSparseMemoryRequirementsUnsafe
    :: VkGetImageSparseMemoryRequirements