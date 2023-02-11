{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_viewport_swizzle

module Vulkan.Types.Struct.VkViewportSwizzleNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkViewportCoordinateSwizzleNV



data {-# CTYPE "vulkan/vulkan.h" "VkViewportSwizzleNV" #-} VkViewportSwizzleNV =
       VkViewportSwizzleNV
         { x :: VkViewportCoordinateSwizzleNV
         , y :: VkViewportCoordinateSwizzleNV
         , z :: VkViewportCoordinateSwizzleNV
         , w :: VkViewportCoordinateSwizzleNV
         }

instance Storable VkViewportSwizzleNV where
  sizeOf    _ = #{size      struct VkViewportSwizzleNV}
  alignment _ = #{alignment struct VkViewportSwizzleNV}

  peek ptr = 
    VkViewportSwizzleNV
       <$> peek (offset @"x" ptr)
       <*> peek (offset @"y" ptr)
       <*> peek (offset @"z" ptr)
       <*> peek (offset @"w" ptr)

  poke ptr val = do
    pokeField @"x" ptr val
    pokeField @"y" ptr val
    pokeField @"z" ptr val
    pokeField @"w" ptr val

instance Offset "x" VkViewportSwizzleNV where
  rawOffset = #{offset struct VkViewportSwizzleNV, x}

instance Offset "y" VkViewportSwizzleNV where
  rawOffset = #{offset struct VkViewportSwizzleNV, y}

instance Offset "z" VkViewportSwizzleNV where
  rawOffset = #{offset struct VkViewportSwizzleNV, z}

instance Offset "w" VkViewportSwizzleNV where
  rawOffset = #{offset struct VkViewportSwizzleNV, w}

#else

module Vulkan.Types.Struct.VkViewportSwizzleNV where

#endif