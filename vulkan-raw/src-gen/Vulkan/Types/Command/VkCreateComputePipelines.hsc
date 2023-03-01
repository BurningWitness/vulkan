{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateComputePipelines where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkComputePipelineCreateInfo
import Vulkan.Types.VkFun



type VkCreateComputePipelines =
          VkDevice -- ^ device
       -> VkPipelineCache -- ^ pipelineCache
       -> #{type uint32_t} -- ^ createInfoCount
       -> Ptr VkComputePipelineCreateInfo -- ^ pCreateInfos
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkPipeline -- ^ pPipelines
       -> IO VkResult

vkFunCreateComputePipelines :: VkFun VkCreateComputePipelines
vkFunCreateComputePipelines = VkFun (Ptr ("vkCreateComputePipelines\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateComputePipelines"
  vkCreateComputePipelines
    :: VkCreateComputePipelines

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateComputePipelines"
  vkCreateComputePipelinesUnsafe
    :: VkCreateComputePipelines