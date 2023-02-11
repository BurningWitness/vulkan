{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_display_control

module Vulkan.Types.Command.VkRegisterDeviceEventEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkDeviceEventInfoEXT
import Vulkan.Types.VkFun



type VkRegisterDeviceEventEXT =
          VkDevice -- ^ device
       -> Ptr VkDeviceEventInfoEXT -- ^ pDeviceEventInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkFence -- ^ pFence
       -> IO VkResult

vkFunRegisterDeviceEventEXT :: VkFun VkRegisterDeviceEventEXT
vkFunRegisterDeviceEventEXT = VkFun (Ptr ("vkRegisterDeviceEventEXT\0"##))

#else

module Vulkan.Types.Command.VkRegisterDeviceEventEXT where

#endif