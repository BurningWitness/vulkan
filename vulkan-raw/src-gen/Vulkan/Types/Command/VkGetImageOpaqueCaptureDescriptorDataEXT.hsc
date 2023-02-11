{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Command.VkGetImageOpaqueCaptureDescriptorDataEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageCaptureDescriptorDataInfoEXT
import Vulkan.Types.VkFun



type VkGetImageOpaqueCaptureDescriptorDataEXT =
          VkDevice -- ^ device
       -> Ptr VkImageCaptureDescriptorDataInfoEXT -- ^ pInfo
       -> Ptr () -- ^ pData
       -> IO VkResult

vkFunGetImageOpaqueCaptureDescriptorDataEXT :: VkFun VkGetImageOpaqueCaptureDescriptorDataEXT
vkFunGetImageOpaqueCaptureDescriptorDataEXT = VkFun (Ptr ("vkGetImageOpaqueCaptureDescriptorDataEXT\0"##))

#else

module Vulkan.Types.Command.VkGetImageOpaqueCaptureDescriptorDataEXT where

#endif