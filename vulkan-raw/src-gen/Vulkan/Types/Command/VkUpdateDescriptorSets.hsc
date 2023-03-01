{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkUpdateDescriptorSets where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyDescriptorSet
import Vulkan.Types.Struct.VkWriteDescriptorSet
import Vulkan.Types.VkFun



type VkUpdateDescriptorSets =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ descriptorWriteCount
       -> Ptr VkWriteDescriptorSet -- ^ pDescriptorWrites
       -> #{type uint32_t} -- ^ descriptorCopyCount
       -> Ptr VkCopyDescriptorSet -- ^ pDescriptorCopies
       -> IO ()

vkFunUpdateDescriptorSets :: VkFun VkUpdateDescriptorSets
vkFunUpdateDescriptorSets = VkFun (Ptr ("vkUpdateDescriptorSets\0"##))

foreign import CALLCV "vulkan/vulkan.h vkUpdateDescriptorSets"
  vkUpdateDescriptorSets
    :: VkUpdateDescriptorSets

foreign import CALLCV unsafe "vulkan/vulkan.h vkUpdateDescriptorSets"
  vkUpdateDescriptorSetsUnsafe
    :: VkUpdateDescriptorSets