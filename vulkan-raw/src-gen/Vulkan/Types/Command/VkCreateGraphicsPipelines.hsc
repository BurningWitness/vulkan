{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateGraphicsPipelines where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkGraphicsPipelineCreateInfo
import Vulkan.Types.VkFun



type VkCreateGraphicsPipelines =
          VkDevice -- ^ device
       -> VkPipelineCache -- ^ pipelineCache
       -> #{type uint32_t} -- ^ createInfoCount
       -> Ptr VkGraphicsPipelineCreateInfo -- ^ pCreateInfos
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkPipeline -- ^ pPipelines
       -> IO VkResult

vkFunCreateGraphicsPipelines :: VkFun VkCreateGraphicsPipelines
vkFunCreateGraphicsPipelines = VkFun (Ptr ("vkCreateGraphicsPipelines\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateGraphicsPipelines"
  vkCreateGraphicsPipelines
    :: VkCreateGraphicsPipelines

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateGraphicsPipelines"
  vkCreateGraphicsPipelinesUnsafe
    :: VkCreateGraphicsPipelines