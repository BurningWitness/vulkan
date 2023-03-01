{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkViSurfaceCreateFlagsNN where

import Vulkan.Types.Base



#if VK_NN_vi_surface
type VkViSurfaceCreateFlagsNN = VkFlags
#endif