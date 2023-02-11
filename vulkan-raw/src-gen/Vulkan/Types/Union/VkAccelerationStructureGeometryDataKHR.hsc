{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      union VkAccelerationStructureGeometryDataKHR}
  alignment _ = #{alignment union VkAccelerationStructureGeometryDataKHR}

  peek ptr = 
    VkAccelerationStructureGeometryDataKHR
       <$> peek (offset @"triangles" ptr)
       <*> peek (offset @"aabbs" ptr)
       <*> peek (offset @"instances" ptr)

  poke ptr val = do
    pokeField @"triangles" ptr val
    pokeField @"aabbs" ptr val
    pokeField @"instances" ptr val

instance Offset "triangles" VkAccelerationStructureGeometryDataKHR where
  rawOffset = #{offset union VkAccelerationStructureGeometryDataKHR, triangles}

instance Offset "aabbs" VkAccelerationStructureGeometryDataKHR where
  rawOffset = #{offset union VkAccelerationStructureGeometryDataKHR, aabbs}

instance Offset "instances" VkAccelerationStructureGeometryDataKHR where
  rawOffset = #{offset union VkAccelerationStructureGeometryDataKHR, instances}

#else

module Vulkan.Types.Union.VkAccelerationStructureGeometryDataKHR where

#endif