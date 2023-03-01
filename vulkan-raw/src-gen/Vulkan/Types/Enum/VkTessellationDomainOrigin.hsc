{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkTessellationDomainOrigin where

import Data.Int



#if VK_VERSION_1_1
type VkTessellationDomainOrigin = #{type int}
#endif

#if VK_VERSION_1_1
pattern VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT :: (Eq a, Num a) => a
pattern VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT = 0
#endif

#if VK_VERSION_1_1
pattern VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT :: (Eq a, Num a) => a
pattern VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT = 1
#endif

#if VK_VERSION_1_1
pattern VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT_KHR :: (Eq a, Num a) => a
pattern VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT_KHR = 0
#endif

#if VK_VERSION_1_1
pattern VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT_KHR :: (Eq a, Num a) => a
pattern VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT_KHR = 1
#endif