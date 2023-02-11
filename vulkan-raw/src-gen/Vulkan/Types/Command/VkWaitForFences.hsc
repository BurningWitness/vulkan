{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkWaitForFences where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkWaitForFences =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ fenceCount
       -> Ptr VkFence -- ^ pFences
       -> VkBool32 -- ^ waitAll
       -> #{type uint64_t} -- ^ timeout
       -> IO VkResult

vkFunWaitForFences :: VkFun VkWaitForFences
vkFunWaitForFences = VkFun (Ptr ("vkWaitForFences\0"##))

foreign import CALLCV "vulkan/vulkan.h vkWaitForFences"
  vkWaitForFences
    :: VkWaitForFences

foreign import CALLCV unsafe "vulkan/vulkan.h vkWaitForFences"
  vkWaitForFencesUnsafe
    :: VkWaitForFences