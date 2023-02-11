{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImagePipeSurfaceCreateFlagsFUCHSIA where

import Vulkan.Types.Base



#if VK_FUCHSIA_imagepipe_surface
type VkImagePipeSurfaceCreateFlagsFUCHSIA = VkFlags
#endif