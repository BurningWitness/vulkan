{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_host_query_reset

module Vulkan.Types.Command.VkResetQueryPoolEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkResetQueryPoolEXT =
          VkDevice -- ^ device
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ firstQuery
       -> #{type uint32_t} -- ^ queryCount
       -> IO ()

vkFunResetQueryPoolEXT :: VkFun VkResetQueryPoolEXT
vkFunResetQueryPoolEXT = VkFun (Ptr ("vkResetQueryPoolEXT\0"##))

#else

module Vulkan.Types.Command.VkResetQueryPoolEXT where

#endif