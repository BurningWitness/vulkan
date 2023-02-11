{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetInstanceProcAddr where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.FuncPointer
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetInstanceProcAddr =
          VkInstance -- ^ instance
       -> Ptr #{type char} -- ^ pName
       -> IO (FunPtr PFN_vkVoidFunction)

vkFunGetInstanceProcAddr :: VkFun VkGetInstanceProcAddr
vkFunGetInstanceProcAddr = VkFun (Ptr ("vkGetInstanceProcAddr\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetInstanceProcAddr"
  vkGetInstanceProcAddr
    :: VkGetInstanceProcAddr

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetInstanceProcAddr"
  vkGetInstanceProcAddrUnsafe
    :: VkGetInstanceProcAddr