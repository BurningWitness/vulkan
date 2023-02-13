{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSamplerAddressMode where

import Data.Int



type VkSamplerAddressMode = #{type int}

pattern VK_SAMPLER_ADDRESS_MODE_REPEAT :: (Eq a, Num a) => a
pattern VK_SAMPLER_ADDRESS_MODE_REPEAT = 0

pattern VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT :: (Eq a, Num a) => a
pattern VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT = 1

pattern VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE :: (Eq a, Num a) => a
pattern VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE = 2

pattern VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER :: (Eq a, Num a) => a
pattern VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER = 3

#if VK_VERSION_1_2 || (VK_KHR_sampler_mirror_clamp_to_edge)
-- | No need to add an extnumber attribute, since this uses a core enum value
pattern VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE :: (Eq a, Num a) => a
pattern VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE = 4
#endif

#if VK_KHR_sampler_mirror_clamp_to_edge
-- | Alias introduced for consistency with extension suffixing rules
pattern VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE_KHR :: (Eq a, Num a) => a
pattern VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE_KHR = 4
#endif