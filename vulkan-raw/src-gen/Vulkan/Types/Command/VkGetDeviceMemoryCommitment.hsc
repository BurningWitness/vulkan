{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetDeviceMemoryCommitment where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDeviceMemoryCommitment =
          VkDevice -- ^ device
       -> VkDeviceMemory -- ^ memory
       -> Ptr VkDeviceSize -- ^ pCommittedMemoryInBytes
       -> IO ()

vkFunGetDeviceMemoryCommitment :: VkFun VkGetDeviceMemoryCommitment
vkFunGetDeviceMemoryCommitment = VkFun (Ptr ("vkGetDeviceMemoryCommitment\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetDeviceMemoryCommitment"
  vkGetDeviceMemoryCommitment
    :: VkGetDeviceMemoryCommitment

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetDeviceMemoryCommitment"
  vkGetDeviceMemoryCommitmentUnsafe
    :: VkGetDeviceMemoryCommitment