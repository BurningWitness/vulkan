{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_sampler_ycbcr_conversion

module Vulkan.Types.Command.VkDestroySamplerYcbcrConversionKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroySamplerYcbcrConversionKHR =
          VkDevice -- ^ device
       -> VkSamplerYcbcrConversion -- ^ ycbcrConversion
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroySamplerYcbcrConversionKHR :: VkFun VkDestroySamplerYcbcrConversionKHR
vkFunDestroySamplerYcbcrConversionKHR = VkFun (Ptr ("vkDestroySamplerYcbcrConversionKHR\0"##))

#else

module Vulkan.Types.Command.VkDestroySamplerYcbcrConversionKHR where

#endif