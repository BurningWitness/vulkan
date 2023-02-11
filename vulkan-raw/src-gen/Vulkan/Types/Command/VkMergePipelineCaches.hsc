{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkMergePipelineCaches where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkMergePipelineCaches =
          VkDevice -- ^ device
       -> VkPipelineCache -- ^ dstCache
       -> #{type uint32_t} -- ^ srcCacheCount
       -> Ptr VkPipelineCache -- ^ pSrcCaches
       -> IO VkResult

vkFunMergePipelineCaches :: VkFun VkMergePipelineCaches
vkFunMergePipelineCaches = VkFun (Ptr ("vkMergePipelineCaches\0"##))

foreign import CALLCV "vulkan/vulkan.h vkMergePipelineCaches"
  vkMergePipelineCaches
    :: VkMergePipelineCaches

foreign import CALLCV unsafe "vulkan/vulkan.h vkMergePipelineCaches"
  vkMergePipelineCachesUnsafe
    :: VkMergePipelineCaches