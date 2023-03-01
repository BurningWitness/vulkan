{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyImageView where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyImageView =
          VkDevice -- ^ device
       -> VkImageView -- ^ imageView
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyImageView :: VkFun VkDestroyImageView
vkFunDestroyImageView = VkFun (Ptr ("vkDestroyImageView\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyImageView"
  vkDestroyImageView
    :: VkDestroyImageView

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyImageView"
  vkDestroyImageViewUnsafe
    :: VkDestroyImageView