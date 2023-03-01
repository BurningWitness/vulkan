{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Command.VkGetDescriptorEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDescriptorGetInfoEXT
import Vulkan.Types.VkFun



type VkGetDescriptorEXT =
          VkDevice -- ^ device
       -> Ptr VkDescriptorGetInfoEXT -- ^ pDescriptorInfo
       -> #{type size_t} -- ^ dataSize
       -> Ptr () -- ^ pDescriptor
       -> IO ()

vkFunGetDescriptorEXT :: VkFun VkGetDescriptorEXT
vkFunGetDescriptorEXT = VkFun (Ptr ("vkGetDescriptorEXT\0"##))

#else

module Vulkan.Types.Command.VkGetDescriptorEXT where

#endif