{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetPipelineCacheData where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetPipelineCacheData =
          VkDevice -- ^ device
       -> VkPipelineCache -- ^ pipelineCache
       -> Ptr #{type size_t} -- ^ pDataSize
       -> Ptr () -- ^ pData
       -> IO VkResult

vkFunGetPipelineCacheData :: VkFun VkGetPipelineCacheData
vkFunGetPipelineCacheData = VkFun (Ptr ("vkGetPipelineCacheData\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetPipelineCacheData"
  vkGetPipelineCacheData
    :: VkGetPipelineCacheData

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPipelineCacheData"
  vkGetPipelineCacheDataUnsafe
    :: VkGetPipelineCacheData