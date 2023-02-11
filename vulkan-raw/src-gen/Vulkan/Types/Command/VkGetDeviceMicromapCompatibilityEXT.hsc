{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkGetDeviceMicromapCompatibilityEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkAccelerationStructureCompatibilityKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMicromapVersionInfoEXT
import Vulkan.Types.VkFun



type VkGetDeviceMicromapCompatibilityEXT =
          VkDevice -- ^ device
       -> Ptr VkMicromapVersionInfoEXT -- ^ pVersionInfo
       -> Ptr VkAccelerationStructureCompatibilityKHR -- ^ pCompatibility
       -> IO ()

vkFunGetDeviceMicromapCompatibilityEXT :: VkFun VkGetDeviceMicromapCompatibilityEXT
vkFunGetDeviceMicromapCompatibilityEXT = VkFun (Ptr ("vkGetDeviceMicromapCompatibilityEXT\0"##))

#else

module Vulkan.Types.Command.VkGetDeviceMicromapCompatibilityEXT where

#endif