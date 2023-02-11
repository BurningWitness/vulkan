{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkCreateSamplerYcbcrConversion where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkSamplerYcbcrConversionCreateInfo
import Vulkan.Types.VkFun



type VkCreateSamplerYcbcrConversion =
          VkDevice -- ^ device
       -> Ptr VkSamplerYcbcrConversionCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSamplerYcbcrConversion -- ^ pYcbcrConversion
       -> IO VkResult

vkFunCreateSamplerYcbcrConversion :: VkFun VkCreateSamplerYcbcrConversion
vkFunCreateSamplerYcbcrConversion = VkFun (Ptr ("vkCreateSamplerYcbcrConversion\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkCreateSamplerYcbcrConversion"
  vkCreateSamplerYcbcrConversion
    :: VkCreateSamplerYcbcrConversion

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateSamplerYcbcrConversion"
  vkCreateSamplerYcbcrConversionUnsafe
    :: VkCreateSamplerYcbcrConversion
##endif

#else

module Vulkan.Types.Command.VkCreateSamplerYcbcrConversion where

#endif