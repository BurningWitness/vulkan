{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCopyMicromapModeEXT where

import Data.Int



#if VK_EXT_opacity_micromap
type VkCopyMicromapModeEXT = #{type int}
#endif

#if VK_EXT_opacity_micromap
pattern VK_COPY_MICROMAP_MODE_CLONE_EXT :: (Eq a, Num a) => a
pattern VK_COPY_MICROMAP_MODE_CLONE_EXT = 0
#endif

#if VK_EXT_opacity_micromap
pattern VK_COPY_MICROMAP_MODE_SERIALIZE_EXT :: (Eq a, Num a) => a
pattern VK_COPY_MICROMAP_MODE_SERIALIZE_EXT = 1
#endif

#if VK_EXT_opacity_micromap
pattern VK_COPY_MICROMAP_MODE_DESERIALIZE_EXT :: (Eq a, Num a) => a
pattern VK_COPY_MICROMAP_MODE_DESERIALIZE_EXT = 2
#endif

#if VK_EXT_opacity_micromap
pattern VK_COPY_MICROMAP_MODE_COMPACT_EXT :: (Eq a, Num a) => a
pattern VK_COPY_MICROMAP_MODE_COMPACT_EXT = 3
#endif