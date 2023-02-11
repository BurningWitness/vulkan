{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_validation_cache

module Vulkan.Types.Command.VkGetValidationCacheDataEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetValidationCacheDataEXT =
          VkDevice -- ^ device
       -> VkValidationCacheEXT -- ^ validationCache
       -> Ptr #{type size_t} -- ^ pDataSize
       -> Ptr () -- ^ pData
       -> IO VkResult

vkFunGetValidationCacheDataEXT :: VkFun VkGetValidationCacheDataEXT
vkFunGetValidationCacheDataEXT = VkFun (Ptr ("vkGetValidationCacheDataEXT\0"##))

#else

module Vulkan.Types.Command.VkGetValidationCacheDataEXT where

#endif