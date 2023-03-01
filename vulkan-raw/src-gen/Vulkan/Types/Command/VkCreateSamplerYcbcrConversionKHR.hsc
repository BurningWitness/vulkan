{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_sampler_ycbcr_conversion

module Vulkan.Types.Command.VkCreateSamplerYcbcrConversionKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkSamplerYcbcrConversionCreateInfo
import Vulkan.Types.VkFun



type VkCreateSamplerYcbcrConversionKHR =
          VkDevice -- ^ device
       -> Ptr VkSamplerYcbcrConversionCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSamplerYcbcrConversion -- ^ pYcbcrConversion
       -> IO VkResult

vkFunCreateSamplerYcbcrConversionKHR :: VkFun VkCreateSamplerYcbcrConversionKHR
vkFunCreateSamplerYcbcrConversionKHR = VkFun (Ptr ("vkCreateSamplerYcbcrConversionKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateSamplerYcbcrConversionKHR where

#endif