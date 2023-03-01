{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateDescriptorSetLayout where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkDescriptorSetLayoutCreateInfo
import Vulkan.Types.VkFun



type VkCreateDescriptorSetLayout =
          VkDevice -- ^ device
       -> Ptr VkDescriptorSetLayoutCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkDescriptorSetLayout -- ^ pSetLayout
       -> IO VkResult

vkFunCreateDescriptorSetLayout :: VkFun VkCreateDescriptorSetLayout
vkFunCreateDescriptorSetLayout = VkFun (Ptr ("vkCreateDescriptorSetLayout\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateDescriptorSetLayout"
  vkCreateDescriptorSetLayout
    :: VkCreateDescriptorSetLayout

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateDescriptorSetLayout"
  vkCreateDescriptorSetLayoutUnsafe
    :: VkCreateDescriptorSetLayout