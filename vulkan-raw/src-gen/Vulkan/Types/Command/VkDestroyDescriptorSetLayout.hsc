{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyDescriptorSetLayout where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyDescriptorSetLayout =
          VkDevice -- ^ device
       -> VkDescriptorSetLayout -- ^ descriptorSetLayout
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyDescriptorSetLayout :: VkFun VkDestroyDescriptorSetLayout
vkFunDestroyDescriptorSetLayout = VkFun (Ptr ("vkDestroyDescriptorSetLayout\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyDescriptorSetLayout"
  vkDestroyDescriptorSetLayout
    :: VkDestroyDescriptorSetLayout

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyDescriptorSetLayout"
  vkDestroyDescriptorSetLayoutUnsafe
    :: VkDestroyDescriptorSetLayout