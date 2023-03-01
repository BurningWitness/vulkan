{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyShaderModule where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyShaderModule =
          VkDevice -- ^ device
       -> VkShaderModule -- ^ shaderModule
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyShaderModule :: VkFun VkDestroyShaderModule
vkFunDestroyShaderModule = VkFun (Ptr ("vkDestroyShaderModule\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyShaderModule"
  vkDestroyShaderModule
    :: VkDestroyShaderModule

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyShaderModule"
  vkDestroyShaderModuleUnsafe
    :: VkDestroyShaderModule