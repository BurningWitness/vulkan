{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroySampler where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroySampler =
          VkDevice -- ^ device
       -> VkSampler -- ^ sampler
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroySampler :: VkFun VkDestroySampler
vkFunDestroySampler = VkFun (Ptr ("vkDestroySampler\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroySampler"
  vkDestroySampler
    :: VkDestroySampler

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroySampler"
  vkDestroySamplerUnsafe
    :: VkDestroySampler