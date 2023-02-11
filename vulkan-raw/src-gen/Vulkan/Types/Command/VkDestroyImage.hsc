{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyImage where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyImage =
          VkDevice -- ^ device
       -> VkImage -- ^ image
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyImage :: VkFun VkDestroyImage
vkFunDestroyImage = VkFun (Ptr ("vkDestroyImage\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyImage"
  vkDestroyImage
    :: VkDestroyImage

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyImage"
  vkDestroyImageUnsafe
    :: VkDestroyImage