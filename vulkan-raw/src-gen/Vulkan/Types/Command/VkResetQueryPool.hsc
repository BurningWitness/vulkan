{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkResetQueryPool where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkResetQueryPool =
          VkDevice -- ^ device
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ firstQuery
       -> #{type uint32_t} -- ^ queryCount
       -> IO ()

vkFunResetQueryPool :: VkFun VkResetQueryPool
vkFunResetQueryPool = VkFun (Ptr ("vkResetQueryPool\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkResetQueryPool"
  vkResetQueryPool
    :: VkResetQueryPool

foreign import CALLCV unsafe "vulkan/vulkan.h vkResetQueryPool"
  vkResetQueryPoolUnsafe
    :: VkResetQueryPool
##endif

#else

module Vulkan.Types.Command.VkResetQueryPool where

#endif