{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageViewType where

import Data.Int



type VkImageViewType = #{type int}

pattern VK_IMAGE_VIEW_TYPE_1D :: (Eq a, Num a) => a
pattern VK_IMAGE_VIEW_TYPE_1D = 0

pattern VK_IMAGE_VIEW_TYPE_2D :: (Eq a, Num a) => a
pattern VK_IMAGE_VIEW_TYPE_2D = 1

pattern VK_IMAGE_VIEW_TYPE_3D :: (Eq a, Num a) => a
pattern VK_IMAGE_VIEW_TYPE_3D = 2

pattern VK_IMAGE_VIEW_TYPE_CUBE :: (Eq a, Num a) => a
pattern VK_IMAGE_VIEW_TYPE_CUBE = 3

pattern VK_IMAGE_VIEW_TYPE_1D_ARRAY :: (Eq a, Num a) => a
pattern VK_IMAGE_VIEW_TYPE_1D_ARRAY = 4

pattern VK_IMAGE_VIEW_TYPE_2D_ARRAY :: (Eq a, Num a) => a
pattern VK_IMAGE_VIEW_TYPE_2D_ARRAY = 5

pattern VK_IMAGE_VIEW_TYPE_CUBE_ARRAY :: (Eq a, Num a) => a
pattern VK_IMAGE_VIEW_TYPE_CUBE_ARRAY = 6