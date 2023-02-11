{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkQueueSubmit where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSubmitInfo
import Vulkan.Types.VkFun



type VkQueueSubmit =
          VkQueue -- ^ queue
       -> #{type uint32_t} -- ^ submitCount
       -> Ptr VkSubmitInfo -- ^ pSubmits
       -> VkFence -- ^ fence
       -> IO VkResult

vkFunQueueSubmit :: VkFun VkQueueSubmit
vkFunQueueSubmit = VkFun (Ptr ("vkQueueSubmit\0"##))

foreign import CALLCV "vulkan/vulkan.h vkQueueSubmit"
  vkQueueSubmit
    :: VkQueueSubmit

foreign import CALLCV unsafe "vulkan/vulkan.h vkQueueSubmit"
  vkQueueSubmitUnsafe
    :: VkQueueSubmit