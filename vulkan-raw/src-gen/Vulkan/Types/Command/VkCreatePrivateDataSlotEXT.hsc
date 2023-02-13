{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_private_data

module Vulkan.Types.Command.VkCreatePrivateDataSlotEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkPrivateDataSlotCreateInfo
import Vulkan.Types.VkFun



type VkCreatePrivateDataSlotEXT =
          VkDevice -- ^ device
       -> Ptr VkPrivateDataSlotCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkPrivateDataSlot -- ^ pPrivateDataSlot
       -> IO VkResult

vkFunCreatePrivateDataSlotEXT :: VkFun VkCreatePrivateDataSlotEXT
vkFunCreatePrivateDataSlotEXT = VkFun (Ptr ("vkCreatePrivateDataSlotEXT\0"##))

#else

module Vulkan.Types.Command.VkCreatePrivateDataSlotEXT where

#endif