{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkUnmapMemory where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkUnmapMemory =
          VkDevice -- ^ device
       -> VkDeviceMemory -- ^ memory
       -> IO ()

vkFunUnmapMemory :: VkFun VkUnmapMemory
vkFunUnmapMemory = VkFun (Ptr ("vkUnmapMemory\0"##))

foreign import CALLCV "vulkan/vulkan.h vkUnmapMemory"
  vkUnmapMemory
    :: VkUnmapMemory

foreign import CALLCV unsafe "vulkan/vulkan.h vkUnmapMemory"
  vkUnmapMemoryUnsafe
    :: VkUnmapMemory