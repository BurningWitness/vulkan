{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance3

module Vulkan.Types.Command.VkGetDescriptorSetLayoutSupportKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDescriptorSetLayoutCreateInfo
import Vulkan.Types.Struct.VkDescriptorSetLayoutSupport
import Vulkan.Types.VkFun



type VkGetDescriptorSetLayoutSupportKHR =
          VkDevice -- ^ device
       -> Ptr VkDescriptorSetLayoutCreateInfo -- ^ pCreateInfo
       -> Ptr VkDescriptorSetLayoutSupport -- ^ pSupport
       -> IO ()

vkFunGetDescriptorSetLayoutSupportKHR :: VkFun VkGetDescriptorSetLayoutSupportKHR
vkFunGetDescriptorSetLayoutSupportKHR = VkFun (Ptr ("vkGetDescriptorSetLayoutSupportKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDescriptorSetLayoutSupportKHR where

#endif