{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_validation_cache

module Vulkan.Types.Command.VkCreateValidationCacheEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkValidationCacheCreateInfoEXT
import Vulkan.Types.VkFun



type VkCreateValidationCacheEXT =
          VkDevice -- ^ device
       -> Ptr VkValidationCacheCreateInfoEXT -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkValidationCacheEXT -- ^ pValidationCache
       -> IO VkResult

vkFunCreateValidationCacheEXT :: VkFun VkCreateValidationCacheEXT
vkFunCreateValidationCacheEXT = VkFun (Ptr ("vkCreateValidationCacheEXT\0"##))

#else

module Vulkan.Types.Command.VkCreateValidationCacheEXT where

#endif