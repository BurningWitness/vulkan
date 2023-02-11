{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkFreeDescriptorSets where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkFreeDescriptorSets =
          VkDevice -- ^ device
       -> VkDescriptorPool -- ^ descriptorPool
       -> #{type uint32_t} -- ^ descriptorSetCount
       -> Ptr VkDescriptorSet -- ^ pDescriptorSets
       -> IO VkResult

vkFunFreeDescriptorSets :: VkFun VkFreeDescriptorSets
vkFunFreeDescriptorSets = VkFun (Ptr ("vkFreeDescriptorSets\0"##))

foreign import CALLCV "vulkan/vulkan.h vkFreeDescriptorSets"
  vkFreeDescriptorSets
    :: VkFreeDescriptorSets

foreign import CALLCV unsafe "vulkan/vulkan.h vkFreeDescriptorSets"
  vkFreeDescriptorSetsUnsafe
    :: VkFreeDescriptorSets