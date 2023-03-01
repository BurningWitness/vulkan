{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetDeviceProcAddr where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.FuncPointer.PFN_vkVoidFunction
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDeviceProcAddr =
          VkDevice -- ^ device
       -> Ptr #{type char} -- ^ pName
       -> IO (FunPtr PFN_vkVoidFunction)

vkFunGetDeviceProcAddr :: VkFun VkGetDeviceProcAddr
vkFunGetDeviceProcAddr = VkFun (Ptr ("vkGetDeviceProcAddr\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetDeviceProcAddr"
  vkGetDeviceProcAddr
    :: VkGetDeviceProcAddr

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetDeviceProcAddr"
  vkGetDeviceProcAddrUnsafe
    :: VkGetDeviceProcAddr