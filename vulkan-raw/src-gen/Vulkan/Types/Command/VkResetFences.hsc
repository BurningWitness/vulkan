{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkResetFences where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkResetFences =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ fenceCount
       -> Ptr VkFence -- ^ pFences
       -> IO VkResult

vkFunResetFences :: VkFun VkResetFences
vkFunResetFences = VkFun (Ptr ("vkResetFences\0"##))

foreign import CALLCV "vulkan/vulkan.h vkResetFences"
  vkResetFences
    :: VkResetFences

foreign import CALLCV unsafe "vulkan/vulkan.h vkResetFences"
  vkResetFencesUnsafe
    :: VkResetFences