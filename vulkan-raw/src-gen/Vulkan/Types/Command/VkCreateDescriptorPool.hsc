{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateDescriptorPool where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkDescriptorPoolCreateInfo
import Vulkan.Types.VkFun



type VkCreateDescriptorPool =
          VkDevice -- ^ device
       -> Ptr VkDescriptorPoolCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkDescriptorPool -- ^ pDescriptorPool
       -> IO VkResult

vkFunCreateDescriptorPool :: VkFun VkCreateDescriptorPool
vkFunCreateDescriptorPool = VkFun (Ptr ("vkCreateDescriptorPool\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateDescriptorPool"
  vkCreateDescriptorPool
    :: VkCreateDescriptorPool

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateDescriptorPool"
  vkCreateDescriptorPoolUnsafe
    :: VkCreateDescriptorPool