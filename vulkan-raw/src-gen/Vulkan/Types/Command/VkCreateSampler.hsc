{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateSampler where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkSamplerCreateInfo
import Vulkan.Types.VkFun



type VkCreateSampler =
          VkDevice -- ^ device
       -> Ptr VkSamplerCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSampler -- ^ pSampler
       -> IO VkResult

vkFunCreateSampler :: VkFun VkCreateSampler
vkFunCreateSampler = VkFun (Ptr ("vkCreateSampler\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateSampler"
  vkCreateSampler
    :: VkCreateSampler

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateSampler"
  vkCreateSamplerUnsafe
    :: VkCreateSampler