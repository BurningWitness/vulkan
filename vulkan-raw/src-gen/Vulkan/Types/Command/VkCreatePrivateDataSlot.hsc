{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkCreatePrivateDataSlot where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkPrivateDataSlotCreateInfo
import Vulkan.Types.VkFun



type VkCreatePrivateDataSlot =
          VkDevice -- ^ device
       -> Ptr VkPrivateDataSlotCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkPrivateDataSlot -- ^ pPrivateDataSlot
       -> IO VkResult

vkFunCreatePrivateDataSlot :: VkFun VkCreatePrivateDataSlot
vkFunCreatePrivateDataSlot = VkFun (Ptr ("vkCreatePrivateDataSlot\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkCreatePrivateDataSlot"
  vkCreatePrivateDataSlot
    :: VkCreatePrivateDataSlot

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreatePrivateDataSlot"
  vkCreatePrivateDataSlotUnsafe
    :: VkCreatePrivateDataSlot
##endif

#else

module Vulkan.Types.Command.VkCreatePrivateDataSlot where

#endif