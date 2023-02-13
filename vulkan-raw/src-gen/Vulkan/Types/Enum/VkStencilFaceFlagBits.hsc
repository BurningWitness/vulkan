{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkStencilFaceFlagBits where

import Vulkan.Types.Base



type VkStencilFaceFlagBits = VkFlags

-- | Front face
pattern VK_STENCIL_FACE_FRONT_BIT :: (Eq a, Num a) => a
pattern VK_STENCIL_FACE_FRONT_BIT = 1

-- | Back face
pattern VK_STENCIL_FACE_BACK_BIT :: (Eq a, Num a) => a
pattern VK_STENCIL_FACE_BACK_BIT = 2

-- | Front and back faces
pattern VK_STENCIL_FACE_FRONT_AND_BACK :: (Eq a, Num a) => a
pattern VK_STENCIL_FACE_FRONT_AND_BACK = 3

-- | Backwards-compatible alias containing a typo
pattern VK_STENCIL_FRONT_AND_BACK :: (Eq a, Num a) => a
pattern VK_STENCIL_FRONT_AND_BACK = 3