{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkResetDescriptorPool where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkDescriptorPoolResetFlags
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkResetDescriptorPool =
          VkDevice -- ^ device
       -> VkDescriptorPool -- ^ descriptorPool
       -> VkDescriptorPoolResetFlags -- ^ flags
       -> IO VkResult

vkFunResetDescriptorPool :: VkFun VkResetDescriptorPool
vkFunResetDescriptorPool = VkFun (Ptr ("vkResetDescriptorPool\0"##))

foreign import CALLCV "vulkan/vulkan.h vkResetDescriptorPool"
  vkResetDescriptorPool
    :: VkResetDescriptorPool

foreign import CALLCV unsafe "vulkan/vulkan.h vkResetDescriptorPool"
  vkResetDescriptorPoolUnsafe
    :: VkResetDescriptorPool