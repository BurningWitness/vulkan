{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdBindDescriptorSets where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBindDescriptorSets =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineBindPoint -- ^ pipelineBindPoint
       -> VkPipelineLayout -- ^ layout
       -> #{type uint32_t} -- ^ firstSet
       -> #{type uint32_t} -- ^ descriptorSetCount
       -> Ptr VkDescriptorSet -- ^ pDescriptorSets
       -> #{type uint32_t} -- ^ dynamicOffsetCount
       -> Ptr #{type uint32_t} -- ^ pDynamicOffsets
       -> IO ()

vkFunCmdBindDescriptorSets :: VkFun VkCmdBindDescriptorSets
vkFunCmdBindDescriptorSets = VkFun (Ptr ("vkCmdBindDescriptorSets\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdBindDescriptorSets"
  vkCmdBindDescriptorSets
    :: VkCmdBindDescriptorSets

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdBindDescriptorSets"
  vkCmdBindDescriptorSetsUnsafe
    :: VkCmdBindDescriptorSets