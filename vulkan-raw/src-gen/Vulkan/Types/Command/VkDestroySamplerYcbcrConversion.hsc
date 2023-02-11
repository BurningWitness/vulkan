{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkDestroySamplerYcbcrConversion where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroySamplerYcbcrConversion =
          VkDevice -- ^ device
       -> VkSamplerYcbcrConversion -- ^ ycbcrConversion
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroySamplerYcbcrConversion :: VkFun VkDestroySamplerYcbcrConversion
vkFunDestroySamplerYcbcrConversion = VkFun (Ptr ("vkDestroySamplerYcbcrConversion\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkDestroySamplerYcbcrConversion"
  vkDestroySamplerYcbcrConversion
    :: VkDestroySamplerYcbcrConversion

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroySamplerYcbcrConversion"
  vkDestroySamplerYcbcrConversionUnsafe
    :: VkDestroySamplerYcbcrConversion
##endif

#else

module Vulkan.Types.Command.VkDestroySamplerYcbcrConversion where

#endif