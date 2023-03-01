{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPhysicalDeviceType where

import Data.Int



type VkPhysicalDeviceType = #{type int}

pattern VK_PHYSICAL_DEVICE_TYPE_OTHER :: (Eq a, Num a) => a
pattern VK_PHYSICAL_DEVICE_TYPE_OTHER = 0

pattern VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU :: (Eq a, Num a) => a
pattern VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU = 1

pattern VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU :: (Eq a, Num a) => a
pattern VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU = 2

pattern VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU :: (Eq a, Num a) => a
pattern VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU = 3

pattern VK_PHYSICAL_DEVICE_TYPE_CPU :: (Eq a, Num a) => a
pattern VK_PHYSICAL_DEVICE_TYPE_CPU = 4