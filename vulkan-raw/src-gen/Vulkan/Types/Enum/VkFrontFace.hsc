{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFrontFace where

import Data.Int



type VkFrontFace = #{type int}

pattern VK_FRONT_FACE_COUNTER_CLOCKWISE :: (Eq a, Num a) => a
pattern VK_FRONT_FACE_COUNTER_CLOCKWISE = 0

pattern VK_FRONT_FACE_CLOCKWISE :: (Eq a, Num a) => a
pattern VK_FRONT_FACE_CLOCKWISE = 1