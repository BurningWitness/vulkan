{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVendorId where

import Data.Int



type VkVendorId = #{type int}

-- | Vivante vendor ID
pattern VK_VENDOR_ID_VIV :: (Eq a, Num a) => a
pattern VK_VENDOR_ID_VIV = 65537

-- | VeriSilicon vendor ID
pattern VK_VENDOR_ID_VSI :: (Eq a, Num a) => a
pattern VK_VENDOR_ID_VSI = 65538

-- | Kazan Software Renderer
pattern VK_VENDOR_ID_KAZAN :: (Eq a, Num a) => a
pattern VK_VENDOR_ID_KAZAN = 65539

-- | Codeplay Software Ltd. vendor ID
pattern VK_VENDOR_ID_CODEPLAY :: (Eq a, Num a) => a
pattern VK_VENDOR_ID_CODEPLAY = 65540

-- | Mesa vendor ID
pattern VK_VENDOR_ID_MESA :: (Eq a, Num a) => a
pattern VK_VENDOR_ID_MESA = 65541

-- | PoCL vendor ID
pattern VK_VENDOR_ID_POCL :: (Eq a, Num a) => a
pattern VK_VENDOR_ID_POCL = 65542