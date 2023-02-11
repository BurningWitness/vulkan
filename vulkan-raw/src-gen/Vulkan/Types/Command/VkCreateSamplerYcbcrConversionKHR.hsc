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
import Vulkan.Types.Command.VkCreateSamplerYcbcrConversion
import Vulkan.Types.VkFun



type VkCreateSamplerYcbcrConversionKHR = VkCreateSamplerYcbcrConversion

vkFunCreateSamplerYcbcrConversionKHR
  :: VkFun VkCreateSamplerYcbcrConversionKHR
vkFunCreateSamplerYcbcrConversionKHR = vkFunCreateSamplerYcbcrConversion


#else

module Vulkan.Types.Command.VkCreateSamplerYcbcrConversionKHR where

#endif