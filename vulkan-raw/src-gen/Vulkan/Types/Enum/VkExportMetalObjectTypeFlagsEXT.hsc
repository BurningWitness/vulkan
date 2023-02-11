{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExportMetalObjectTypeFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_metal_objects
type VkExportMetalObjectTypeFlagsEXT = VkFlags
#endif