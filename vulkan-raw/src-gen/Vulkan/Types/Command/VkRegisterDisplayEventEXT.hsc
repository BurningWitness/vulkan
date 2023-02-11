{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_display_control

module Vulkan.Types.Command.VkRegisterDisplayEventEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkDisplayEventInfoEXT
import Vulkan.Types.VkFun



type VkRegisterDisplayEventEXT =
          VkDevice -- ^ device
       -> VkDisplayKHR -- ^ display
       -> Ptr VkDisplayEventInfoEXT -- ^ pDisplayEventInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkFence -- ^ pFence
       -> IO VkResult

vkFunRegisterDisplayEventEXT :: VkFun VkRegisterDisplayEventEXT
vkFunRegisterDisplayEventEXT = VkFun (Ptr ("vkRegisterDisplayEventEXT\0"##))

#else

module Vulkan.Types.Command.VkRegisterDisplayEventEXT where

#endif