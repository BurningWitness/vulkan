{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreatePipelineLayout where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkPipelineLayoutCreateInfo
import Vulkan.Types.VkFun



type VkCreatePipelineLayout =
          VkDevice -- ^ device
       -> Ptr VkPipelineLayoutCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkPipelineLayout -- ^ pPipelineLayout
       -> IO VkResult

vkFunCreatePipelineLayout :: VkFun VkCreatePipelineLayout
vkFunCreatePipelineLayout = VkFun (Ptr ("vkCreatePipelineLayout\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreatePipelineLayout"
  vkCreatePipelineLayout
    :: VkCreatePipelineLayout

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreatePipelineLayout"
  vkCreatePipelineLayoutUnsafe
    :: VkCreatePipelineLayout