{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkDestroyPrivateDataSlot where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyPrivateDataSlot =
          VkDevice -- ^ device
       -> VkPrivateDataSlot -- ^ privateDataSlot
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyPrivateDataSlot :: VkFun VkDestroyPrivateDataSlot
vkFunDestroyPrivateDataSlot = VkFun (Ptr ("vkDestroyPrivateDataSlot\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkDestroyPrivateDataSlot"
  vkDestroyPrivateDataSlot
    :: VkDestroyPrivateDataSlot

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyPrivateDataSlot"
  vkDestroyPrivateDataSlotUnsafe
    :: VkDestroyPrivateDataSlot
##endif

#else

module Vulkan.Types.Command.VkDestroyPrivateDataSlot where

#endif