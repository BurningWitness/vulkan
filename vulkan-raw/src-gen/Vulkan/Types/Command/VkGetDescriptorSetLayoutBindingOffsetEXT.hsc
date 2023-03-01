{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Command.VkGetDescriptorSetLayoutBindingOffsetEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDescriptorSetLayoutBindingOffsetEXT =
          VkDevice -- ^ device
       -> VkDescriptorSetLayout -- ^ layout
       -> #{type uint32_t} -- ^ binding
       -> Ptr VkDeviceSize -- ^ pOffset
       -> IO ()

vkFunGetDescriptorSetLayoutBindingOffsetEXT :: VkFun VkGetDescriptorSetLayoutBindingOffsetEXT
vkFunGetDescriptorSetLayoutBindingOffsetEXT = VkFun (Ptr ("vkGetDescriptorSetLayoutBindingOffsetEXT\0"##))

#else

module Vulkan.Types.Command.VkGetDescriptorSetLayoutBindingOffsetEXT where

#endif