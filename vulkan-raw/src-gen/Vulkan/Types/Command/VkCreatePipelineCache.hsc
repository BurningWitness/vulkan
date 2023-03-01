{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreatePipelineCache where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkPipelineCacheCreateInfo
import Vulkan.Types.VkFun



type VkCreatePipelineCache =
          VkDevice -- ^ device
       -> Ptr VkPipelineCacheCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkPipelineCache -- ^ pPipelineCache
       -> IO VkResult

vkFunCreatePipelineCache :: VkFun VkCreatePipelineCache
vkFunCreatePipelineCache = VkFun (Ptr ("vkCreatePipelineCache\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreatePipelineCache"
  vkCreatePipelineCache
    :: VkCreatePipelineCache

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreatePipelineCache"
  vkCreatePipelineCacheUnsafe
    :: VkCreatePipelineCache