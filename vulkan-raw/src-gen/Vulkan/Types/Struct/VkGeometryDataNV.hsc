{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Struct.VkGeometryDataNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkGeometryAABBNV
import Vulkan.Types.Struct.VkGeometryTrianglesNV



data {-# CTYPE "vulkan/vulkan.h" "VkGeometryDataNV" #-} VkGeometryDataNV =
       VkGeometryDataNV
         { triangles :: VkGeometryTrianglesNV
         , aabbs :: VkGeometryAABBNV
         }

instance Storable VkGeometryDataNV where
  sizeOf    _ = #{size      VkGeometryDataNV}
  alignment _ = #{alignment VkGeometryDataNV}

  peek ptr = 
    VkGeometryDataNV
       <$> peek (offset @"triangles" ptr)
       <*> peek (offset @"aabbs" ptr)

  poke ptr val = do
    pokeField @"triangles" ptr val
    pokeField @"aabbs" ptr val

instance Offset "triangles" VkGeometryDataNV where
  rawOffset = #{offset VkGeometryDataNV, triangles}

instance Offset "aabbs" VkGeometryDataNV where
  rawOffset = #{offset VkGeometryDataNV, aabbs}

#else

module Vulkan.Types.Struct.VkGeometryDataNV where

#endif