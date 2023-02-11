{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageType where

import Data.Int



type VkImageType = #{type int}

pattern VK_IMAGE_TYPE_1D :: (Eq a, Num a) => a
pattern VK_IMAGE_TYPE_1D = 0

pattern VK_IMAGE_TYPE_2D :: (Eq a, Num a) => a
pattern VK_IMAGE_TYPE_2D = 1

pattern VK_IMAGE_TYPE_3D :: (Eq a, Num a) => a
pattern VK_IMAGE_TYPE_3D = 2