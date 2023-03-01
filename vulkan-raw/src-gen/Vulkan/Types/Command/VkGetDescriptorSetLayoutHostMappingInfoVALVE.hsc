{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VALVE_descriptor_set_host_mapping

module Vulkan.Types.Command.VkGetDescriptorSetLayoutHostMappingInfoVALVE where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDescriptorSetBindingReferenceVALVE
import Vulkan.Types.Struct.VkDescriptorSetLayoutHostMappingInfoVALVE
import Vulkan.Types.VkFun



type VkGetDescriptorSetLayoutHostMappingInfoVALVE =
          VkDevice -- ^ device
       -> Ptr VkDescriptorSetBindingReferenceVALVE -- ^ pBindingReference
       -> Ptr VkDescriptorSetLayoutHostMappingInfoVALVE -- ^ pHostMapping
       -> IO ()

vkFunGetDescriptorSetLayoutHostMappingInfoVALVE :: VkFun VkGetDescriptorSetLayoutHostMappingInfoVALVE
vkFunGetDescriptorSetLayoutHostMappingInfoVALVE = VkFun (Ptr ("vkGetDescriptorSetLayoutHostMappingInfoVALVE\0"##))

#else

module Vulkan.Types.Command.VkGetDescriptorSetLayoutHostMappingInfoVALVE where

#endif