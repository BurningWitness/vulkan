{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing_motion_blur

module Vulkan.Types.Struct.VkAccelerationStructureGeometryMotionTrianglesDataNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Union.VkDeviceOrHostAddressConstKHR



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureGeometryMotionTrianglesDataNV" #-} VkAccelerationStructureGeometryMotionTrianglesDataNV =
       VkAccelerationStructureGeometryMotionTrianglesDataNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , vertexData :: VkDeviceOrHostAddressConstKHR
         }

instance Storable VkAccelerationStructureGeometryMotionTrianglesDataNV where
  sizeOf    _ = #{size      VkAccelerationStructureGeometryMotionTrianglesDataNV}
  alignment _ = #{alignment VkAccelerationStructureGeometryMotionTrianglesDataNV}

  peek ptr = 
    VkAccelerationStructureGeometryMotionTrianglesDataNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"vertexData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"vertexData" ptr val

instance Offset "sType" VkAccelerationStructureGeometryMotionTrianglesDataNV where
  rawOffset = #{offset VkAccelerationStructureGeometryMotionTrianglesDataNV, sType}

instance Offset "pNext" VkAccelerationStructureGeometryMotionTrianglesDataNV where
  rawOffset = #{offset VkAccelerationStructureGeometryMotionTrianglesDataNV, pNext}

instance Offset "vertexData" VkAccelerationStructureGeometryMotionTrianglesDataNV where
  rawOffset = #{offset VkAccelerationStructureGeometryMotionTrianglesDataNV, vertexData}

#else

module Vulkan.Types.Struct.VkAccelerationStructureGeometryMotionTrianglesDataNV where

#endif