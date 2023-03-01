{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer && VK_KHR_acceleration_structure && VK_NV_ray_tracing

module Vulkan.Types.Command.VkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureCaptureDescriptorDataInfoEXT
import Vulkan.Types.VkFun



type VkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT =
          VkDevice -- ^ device
       -> Ptr VkAccelerationStructureCaptureDescriptorDataInfoEXT -- ^ pInfo
       -> Ptr () -- ^ pData
       -> IO VkResult

vkFunGetAccelerationStructureOpaqueCaptureDescriptorDataEXT :: VkFun VkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT
vkFunGetAccelerationStructureOpaqueCaptureDescriptorDataEXT = VkFun (Ptr ("vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT\0"##))

#else

module Vulkan.Types.Command.VkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT where

#endif