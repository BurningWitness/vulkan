{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Command.VkGetDescriptorSetLayoutSizeEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDescriptorSetLayoutSizeEXT =
          VkDevice -- ^ device
       -> VkDescriptorSetLayout -- ^ layout
       -> Ptr VkDeviceSize -- ^ pLayoutSizeInBytes
       -> IO ()

vkFunGetDescriptorSetLayoutSizeEXT :: VkFun VkGetDescriptorSetLayoutSizeEXT
vkFunGetDescriptorSetLayoutSizeEXT = VkFun (Ptr ("vkGetDescriptorSetLayoutSizeEXT\0"##))

#else

module Vulkan.Types.Command.VkGetDescriptorSetLayoutSizeEXT where

#endif