{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkTessellationDomainOriginKHR where

import Data.Int



#if VK_KHR_maintenance2
type VkTessellationDomainOriginKHR = #{type int}
#endif