{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkProvokingVertexModeEXT where

import Data.Int



#if VK_EXT_provoking_vertex
type VkProvokingVertexModeEXT = #{type int}
#endif

#if VK_EXT_provoking_vertex
pattern VK_PROVOKING_VERTEX_MODE_FIRST_VERTEX_EXT :: (Eq a, Num a) => a
pattern VK_PROVOKING_VERTEX_MODE_FIRST_VERTEX_EXT = 0
#endif

#if VK_EXT_provoking_vertex
pattern VK_PROVOKING_VERTEX_MODE_LAST_VERTEX_EXT :: (Eq a, Num a) => a
pattern VK_PROVOKING_VERTEX_MODE_LAST_VERTEX_EXT = 1
#endif