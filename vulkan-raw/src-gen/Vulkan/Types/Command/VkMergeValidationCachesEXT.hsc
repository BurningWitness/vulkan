{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_validation_cache

module Vulkan.Types.Command.VkMergeValidationCachesEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkMergeValidationCachesEXT =
          VkDevice -- ^ device
       -> VkValidationCacheEXT -- ^ dstCache
       -> #{type uint32_t} -- ^ srcCacheCount
       -> Ptr VkValidationCacheEXT -- ^ pSrcCaches
       -> IO VkResult

vkFunMergeValidationCachesEXT :: VkFun VkMergeValidationCachesEXT
vkFunMergeValidationCachesEXT = VkFun (Ptr ("vkMergeValidationCachesEXT\0"##))

#else

module Vulkan.Types.Command.VkMergeValidationCachesEXT where

#endif