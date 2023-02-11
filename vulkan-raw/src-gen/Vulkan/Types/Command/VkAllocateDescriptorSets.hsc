{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkAllocateDescriptorSets where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDescriptorSetAllocateInfo
import Vulkan.Types.VkFun



type VkAllocateDescriptorSets =
          VkDevice -- ^ device
       -> Ptr VkDescriptorSetAllocateInfo -- ^ pAllocateInfo
       -> Ptr VkDescriptorSet -- ^ pDescriptorSets
       -> IO VkResult

vkFunAllocateDescriptorSets :: VkFun VkAllocateDescriptorSets
vkFunAllocateDescriptorSets = VkFun (Ptr ("vkAllocateDescriptorSets\0"##))

foreign import CALLCV "vulkan/vulkan.h vkAllocateDescriptorSets"
  vkAllocateDescriptorSets
    :: VkAllocateDescriptorSets

foreign import CALLCV unsafe "vulkan/vulkan.h vkAllocateDescriptorSets"
  vkAllocateDescriptorSetsUnsafe
    :: VkAllocateDescriptorSets