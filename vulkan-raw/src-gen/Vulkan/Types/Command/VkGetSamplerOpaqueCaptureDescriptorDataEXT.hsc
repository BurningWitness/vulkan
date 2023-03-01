{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Command.VkGetSamplerOpaqueCaptureDescriptorDataEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSamplerCaptureDescriptorDataInfoEXT
import Vulkan.Types.VkFun



type VkGetSamplerOpaqueCaptureDescriptorDataEXT =
          VkDevice -- ^ device
       -> Ptr VkSamplerCaptureDescriptorDataInfoEXT -- ^ pInfo
       -> Ptr () -- ^ pData
       -> IO VkResult

vkFunGetSamplerOpaqueCaptureDescriptorDataEXT :: VkFun VkGetSamplerOpaqueCaptureDescriptorDataEXT
vkFunGetSamplerOpaqueCaptureDescriptorDataEXT = VkFun (Ptr ("vkGetSamplerOpaqueCaptureDescriptorDataEXT\0"##))

#else

module Vulkan.Types.Command.VkGetSamplerOpaqueCaptureDescriptorDataEXT where

#endif