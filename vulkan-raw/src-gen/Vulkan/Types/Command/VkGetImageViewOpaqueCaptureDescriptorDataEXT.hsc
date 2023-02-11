{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Command.VkGetImageViewOpaqueCaptureDescriptorDataEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageViewCaptureDescriptorDataInfoEXT
import Vulkan.Types.VkFun



type VkGetImageViewOpaqueCaptureDescriptorDataEXT =
          VkDevice -- ^ device
       -> Ptr VkImageViewCaptureDescriptorDataInfoEXT -- ^ pInfo
       -> Ptr () -- ^ pData
       -> IO VkResult

vkFunGetImageViewOpaqueCaptureDescriptorDataEXT :: VkFun VkGetImageViewOpaqueCaptureDescriptorDataEXT
vkFunGetImageViewOpaqueCaptureDescriptorDataEXT = VkFun (Ptr ("vkGetImageViewOpaqueCaptureDescriptorDataEXT\0"##))

#else

module Vulkan.Types.Command.VkGetImageViewOpaqueCaptureDescriptorDataEXT where

#endif