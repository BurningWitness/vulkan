{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateShaderModule where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkShaderModuleCreateInfo
import Vulkan.Types.VkFun



type VkCreateShaderModule =
          VkDevice -- ^ device
       -> Ptr VkShaderModuleCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkShaderModule -- ^ pShaderModule
       -> IO VkResult

vkFunCreateShaderModule :: VkFun VkCreateShaderModule
vkFunCreateShaderModule = VkFun (Ptr ("vkCreateShaderModule\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateShaderModule"
  vkCreateShaderModule
    :: VkCreateShaderModule

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateShaderModule"
  vkCreateShaderModuleUnsafe
    :: VkCreateShaderModule