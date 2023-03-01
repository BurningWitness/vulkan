{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkValidationCacheCreateFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_validation_cache
type VkValidationCacheCreateFlagsEXT = VkFlags
#endif