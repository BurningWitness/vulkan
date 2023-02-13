{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkAccelerationStructureGeometryTrianglesDataKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkIndexType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Union.VkDeviceOrHostAddressConstKHR



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureGeometryTrianglesDataKHR" #-} VkAccelerationStructureGeometryTrianglesDataKHR =
       VkAccelerationStructureGeometryTrianglesDataKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , vertexFormat :: VkFormat
         , vertexData :: VkDeviceOrHostAddressConstKHR
         , vertexStride :: VkDeviceSize
         , maxVertex :: #{type uint32_t}
         , indexType :: VkIndexType
         , indexData :: VkDeviceOrHostAddressConstKHR
         , transformData :: VkDeviceOrHostAddressConstKHR
         }

instance Storable VkAccelerationStructureGeometryTrianglesDataKHR where
  sizeOf    _ = #{size      VkAccelerationStructureGeometryTrianglesDataKHR}
  alignment _ = #{alignment VkAccelerationStructureGeometryTrianglesDataKHR}

  peek ptr = 
    VkAccelerationStructureGeometryTrianglesDataKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"vertexFormat" ptr)
       <*> peek (offset @"vertexData" ptr)
       <*> peek (offset @"vertexStride" ptr)
       <*> peek (offset @"maxVertex" ptr)
       <*> peek (offset @"indexType" ptr)
       <*> peek (offset @"indexData" ptr)
       <*> peek (offset @"transformData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"vertexFormat" ptr val
    pokeField @"vertexData" ptr val
    pokeField @"vertexStride" ptr val
    pokeField @"maxVertex" ptr val
    pokeField @"indexType" ptr val
    pokeField @"indexData" ptr val
    pokeField @"transformData" ptr val

instance Offset "sType" VkAccelerationStructureGeometryTrianglesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryTrianglesDataKHR, sType}

instance Offset "pNext" VkAccelerationStructureGeometryTrianglesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryTrianglesDataKHR, pNext}

instance Offset "vertexFormat" VkAccelerationStructureGeometryTrianglesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryTrianglesDataKHR, vertexFormat}

instance Offset "vertexData" VkAccelerationStructureGeometryTrianglesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryTrianglesDataKHR, vertexData}

instance Offset "vertexStride" VkAccelerationStructureGeometryTrianglesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryTrianglesDataKHR, vertexStride}

instance Offset "maxVertex" VkAccelerationStructureGeometryTrianglesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryTrianglesDataKHR, maxVertex}

instance Offset "indexType" VkAccelerationStructureGeometryTrianglesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryTrianglesDataKHR, indexType}

instance Offset "indexData" VkAccelerationStructureGeometryTrianglesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryTrianglesDataKHR, indexData}

instance Offset "transformData" VkAccelerationStructureGeometryTrianglesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryTrianglesDataKHR, transformData}

#else

module Vulkan.Types.Struct.VkAccelerationStructureGeometryTrianglesDataKHR where

#endif