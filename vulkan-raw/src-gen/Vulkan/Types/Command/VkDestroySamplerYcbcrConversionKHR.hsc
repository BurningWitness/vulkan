#include <vulkan/vulkan.h>

#if VK_KHR_sampler_ycbcr_conversion

module Vulkan.Types.Command.VkDestroySamplerYcbcrConversionKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Command.VkDestroySamplerYcbcrConversion
import Vulkan.Types.VkFun



type VkDestroySamplerYcbcrConversionKHR = VkDestroySamplerYcbcrConversion

vkFunDestroySamplerYcbcrConversionKHR
  :: VkFun VkDestroySamplerYcbcrConversionKHR
vkFunDestroySamplerYcbcrConversionKHR = vkFunDestroySamplerYcbcrConversion


#else

module Vulkan.Types.Command.VkDestroySamplerYcbcrConversionKHR where

#endif