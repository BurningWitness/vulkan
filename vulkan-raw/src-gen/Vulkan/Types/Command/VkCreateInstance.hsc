{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateInstance where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkInstanceCreateInfo
import Vulkan.Types.VkFun



type VkCreateInstance =
          Ptr VkInstanceCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkInstance -- ^ pInstance
       -> IO VkResult

vkFunCreateInstance :: VkFun VkCreateInstance
vkFunCreateInstance = VkFun (Ptr ("vkCreateInstance\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateInstance"
  vkCreateInstance
    :: VkCreateInstance

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateInstance"
  vkCreateInstanceUnsafe
    :: VkCreateInstance