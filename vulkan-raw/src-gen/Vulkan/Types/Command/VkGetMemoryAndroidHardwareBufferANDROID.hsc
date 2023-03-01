{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_ANDROID_external_memory_android_hardware_buffer

module Vulkan.Types.Command.VkGetMemoryAndroidHardwareBufferANDROID where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMemoryGetAndroidHardwareBufferInfoANDROID
import Vulkan.Types.VkFun



type VkGetMemoryAndroidHardwareBufferANDROID =
          VkDevice -- ^ device
       -> Ptr VkMemoryGetAndroidHardwareBufferInfoANDROID -- ^ pInfo
       -> Ptr (Ptr AHardwareBuffer) -- ^ pBuffer
       -> IO VkResult

vkFunGetMemoryAndroidHardwareBufferANDROID :: VkFun VkGetMemoryAndroidHardwareBufferANDROID
vkFunGetMemoryAndroidHardwareBufferANDROID = VkFun (Ptr ("vkGetMemoryAndroidHardwareBufferANDROID\0"##))

#else

module Vulkan.Types.Command.VkGetMemoryAndroidHardwareBufferANDROID where

#endif