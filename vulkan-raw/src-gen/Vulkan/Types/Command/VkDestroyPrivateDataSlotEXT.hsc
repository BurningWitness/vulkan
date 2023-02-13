{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_private_data

module Vulkan.Types.Command.VkDestroyPrivateDataSlotEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyPrivateDataSlotEXT =
          VkDevice -- ^ device
       -> VkPrivateDataSlot -- ^ privateDataSlot
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyPrivateDataSlotEXT :: VkFun VkDestroyPrivateDataSlotEXT
vkFunDestroyPrivateDataSlotEXT = VkFun (Ptr ("vkDestroyPrivateDataSlotEXT\0"##))

#else

module Vulkan.Types.Command.VkDestroyPrivateDataSlotEXT where

#endif