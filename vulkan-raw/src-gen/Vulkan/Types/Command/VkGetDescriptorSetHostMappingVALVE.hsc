{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VALVE_descriptor_set_host_mapping

module Vulkan.Types.Command.VkGetDescriptorSetHostMappingVALVE where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDescriptorSetHostMappingVALVE =
          VkDevice -- ^ device
       -> VkDescriptorSet -- ^ descriptorSet
       -> Ptr (Ptr ()) -- ^ ppData
       -> IO ()

vkFunGetDescriptorSetHostMappingVALVE :: VkFun VkGetDescriptorSetHostMappingVALVE
vkFunGetDescriptorSetHostMappingVALVE = VkFun (Ptr ("vkGetDescriptorSetHostMappingVALVE\0"##))

#else

module Vulkan.Types.Command.VkGetDescriptorSetHostMappingVALVE where

#endif