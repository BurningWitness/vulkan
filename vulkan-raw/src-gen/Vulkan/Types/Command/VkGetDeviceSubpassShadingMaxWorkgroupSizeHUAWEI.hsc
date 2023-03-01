{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_subpass_shading

module Vulkan.Types.Command.VkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExtent2D
import Vulkan.Types.VkFun



type VkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI =
          VkDevice -- ^ device
       -> VkRenderPass -- ^ renderpass
       -> Ptr VkExtent2D -- ^ pMaxWorkgroupSize
       -> IO VkResult

vkFunGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI :: VkFun VkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI
vkFunGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI = VkFun (Ptr ("vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI\0"##))

#else

module Vulkan.Types.Command.VkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI where

#endif