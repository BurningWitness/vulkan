{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDirectDriverLoadingFlagsLUNARG where

import Vulkan.Types.Base



#if VK_LUNARG_direct_driver_loading
type VkDirectDriverLoadingFlagsLUNARG = VkFlags
#endif