{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_validation_cache

module Vulkan.Types.Command.VkDestroyValidationCacheEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyValidationCacheEXT =
          VkDevice -- ^ device
       -> VkValidationCacheEXT -- ^ validationCache
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyValidationCacheEXT :: VkFun VkDestroyValidationCacheEXT
vkFunDestroyValidationCacheEXT = VkFun (Ptr ("vkDestroyValidationCacheEXT\0"##))

#else

module Vulkan.Types.Command.VkDestroyValidationCacheEXT where

#endif