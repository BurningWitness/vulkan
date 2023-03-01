{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDirectFBSurfaceCreateFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_directfb_surface
type VkDirectFBSurfaceCreateFlagsEXT = VkFlags
#endif