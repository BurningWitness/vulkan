{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Command.VkGetBufferOpaqueCaptureDescriptorDataEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferCaptureDescriptorDataInfoEXT
import Vulkan.Types.VkFun



type VkGetBufferOpaqueCaptureDescriptorDataEXT =
          VkDevice -- ^ device
       -> Ptr VkBufferCaptureDescriptorDataInfoEXT -- ^ pInfo
       -> Ptr () -- ^ pData
       -> IO VkResult

vkFunGetBufferOpaqueCaptureDescriptorDataEXT :: VkFun VkGetBufferOpaqueCaptureDescriptorDataEXT
vkFunGetBufferOpaqueCaptureDescriptorDataEXT = VkFun (Ptr ("vkGetBufferOpaqueCaptureDescriptorDataEXT\0"##))

#else

module Vulkan.Types.Command.VkGetBufferOpaqueCaptureDescriptorDataEXT where

#endif