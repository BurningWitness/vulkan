{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Struct.VkGeometryTrianglesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkIndexType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkGeometryTrianglesNV" #-} VkGeometryTrianglesNV =
       VkGeometryTrianglesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , vertexData :: VkBuffer
         , vertexOffset :: VkDeviceSize
         , vertexCount :: #{type uint32_t}
         , vertexStride :: VkDeviceSize
         , vertexFormat :: VkFormat
         , indexData :: VkBuffer
         , indexOffset :: VkDeviceSize
         , indexCount :: #{type uint32_t}
         , indexType :: VkIndexType
         , transformData :: VkBuffer -- ^ Optional reference to array of floats representing a 3x4 row major affine transformation matrix.
         , transformOffset :: VkDeviceSize
         }

instance Storable VkGeometryTrianglesNV where
  sizeOf    _ = #{size      VkGeometryTrianglesNV}
  alignment _ = #{alignment VkGeometryTrianglesNV}

  peek ptr = 
    VkGeometryTrianglesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vertexData" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vertexOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vertexCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vertexStride" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vertexFormat" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"indexData" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"indexOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"indexCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"indexType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"transformData" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"transformOffset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"vertexData" ptr val
    pokeField @"vertexOffset" ptr val
    pokeField @"vertexCount" ptr val
    pokeField @"vertexStride" ptr val
    pokeField @"vertexFormat" ptr val
    pokeField @"indexData" ptr val
    pokeField @"indexOffset" ptr val
    pokeField @"indexCount" ptr val
    pokeField @"indexType" ptr val
    pokeField @"transformData" ptr val
    pokeField @"transformOffset" ptr val

instance Offset "sType" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, sType}

instance Offset "pNext" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, pNext}

instance Offset "vertexData" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, vertexData}

instance Offset "vertexOffset" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, vertexOffset}

instance Offset "vertexCount" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, vertexCount}

instance Offset "vertexStride" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, vertexStride}

instance Offset "vertexFormat" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, vertexFormat}

instance Offset "indexData" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, indexData}

instance Offset "indexOffset" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, indexOffset}

instance Offset "indexCount" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, indexCount}

instance Offset "indexType" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, indexType}

instance Offset "transformData" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, transformData}

instance Offset "transformOffset" VkGeometryTrianglesNV where
  rawOffset = #{offset VkGeometryTrianglesNV, transformOffset}

#else

module Vulkan.Types.Struct.VkGeometryTrianglesNV where

#endif