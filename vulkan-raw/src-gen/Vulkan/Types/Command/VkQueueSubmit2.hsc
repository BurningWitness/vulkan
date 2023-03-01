{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkQueueSubmit2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSubmitInfo2
import Vulkan.Types.VkFun



type VkQueueSubmit2 =
          VkQueue -- ^ queue
       -> #{type uint32_t} -- ^ submitCount
       -> Ptr VkSubmitInfo2 -- ^ pSubmits
       -> VkFence -- ^ fence
       -> IO VkResult

vkFunQueueSubmit2 :: VkFun VkQueueSubmit2
vkFunQueueSubmit2 = VkFun (Ptr ("vkQueueSubmit2\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkQueueSubmit2"
  vkQueueSubmit2
    :: VkQueueSubmit2

foreign import CALLCV unsafe "vulkan/vulkan.h vkQueueSubmit2"
  vkQueueSubmit2Unsafe
    :: VkQueueSubmit2
##endif

#else

module Vulkan.Types.Command.VkQueueSubmit2 where

#endif