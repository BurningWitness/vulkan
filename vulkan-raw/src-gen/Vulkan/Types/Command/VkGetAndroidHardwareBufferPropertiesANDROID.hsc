{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_ANDROID_external_memory_android_hardware_buffer

module Vulkan.Types.Command.VkGetAndroidHardwareBufferPropertiesANDROID where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAndroidHardwareBufferPropertiesANDROID
import Vulkan.Types.VkFun



type VkGetAndroidHardwareBufferPropertiesANDROID =
          VkDevice -- ^ device
       -> Ptr AHardwareBuffer -- ^ buffer
       -> Ptr VkAndroidHardwareBufferPropertiesANDROID -- ^ pProperties
       -> IO VkResult

vkFunGetAndroidHardwareBufferPropertiesANDROID :: VkFun VkGetAndroidHardwareBufferPropertiesANDROID
vkFunGetAndroidHardwareBufferPropertiesANDROID = VkFun (Ptr ("vkGetAndroidHardwareBufferPropertiesANDROID\0"##))

#else

module Vulkan.Types.Command.VkGetAndroidHardwareBufferPropertiesANDROID where

#endif