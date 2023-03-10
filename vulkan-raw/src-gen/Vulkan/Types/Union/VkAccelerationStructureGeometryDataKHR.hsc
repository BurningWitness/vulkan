{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Union.VkAccelerationStructureGeometryDataKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkAccelerationStructureGeometryAabbsDataKHR
import Vulkan.Types.Struct.VkAccelerationStructureGeometryInstancesDataKHR
import Vulkan.Types.Struct.VkAccelerationStructureGeometryTrianglesDataKHR



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureGeometryDataKHR" #-} VkAccelerationStructureGeometryDataKHR =
       VkAccelerationStructureGeometryDataKHR
         { triangles :: VkAccelerationStructureGeometryTrianglesDataKHR
         , aabbs :: VkAccelerationStructureGeometryAabbsDataKHR
         , instances :: VkAccelerationStructureGeometryInstancesDataKHR
         }

instance Storable VkAccelerationStructureGeometryDataKHR where
  sizeOf    _ = #{size      VkAccelerationStructureGeometryDataKHR}
  alignment _ = #{alignment VkAccelerationStructureGeometryDataKHR}

  peek ptr = 
    VkAccelerationStructureGeometryDataKHR
       <$> peek (Foreign.Storable.Offset.offset @"triangles" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"aabbs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"instances" ptr)

  poke ptr val = do
    pokeField @"triangles" ptr val
    pokeField @"aabbs" ptr val
    pokeField @"instances" ptr val

instance Offset "triangles" VkAccelerationStructureGeometryDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryDataKHR, triangles}

instance Offset "aabbs" VkAccelerationStructureGeometryDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryDataKHR, aabbs}

instance Offset "instances" VkAccelerationStructureGeometryDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryDataKHR, instances}

#else

module Vulkan.Types.Union.VkAccelerationStructureGeometryDataKHR where

#endif