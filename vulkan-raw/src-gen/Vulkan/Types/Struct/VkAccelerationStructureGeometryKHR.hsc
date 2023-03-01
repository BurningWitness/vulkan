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

module Vulkan.Types.Struct.VkAccelerationStructureGeometryKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkGeometryFlagsKHR
import Vulkan.Types.Enum.VkGeometryTypeKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Union.VkAccelerationStructureGeometryDataKHR



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureGeometryKHR" #-} VkAccelerationStructureGeometryKHR =
       VkAccelerationStructureGeometryKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , geometryType :: VkGeometryTypeKHR
         , geometry :: VkAccelerationStructureGeometryDataKHR
         , flags :: VkGeometryFlagsKHR
         }

instance Storable VkAccelerationStructureGeometryKHR where
  sizeOf    _ = #{size      VkAccelerationStructureGeometryKHR}
  alignment _ = #{alignment VkAccelerationStructureGeometryKHR}

  peek ptr = 
    VkAccelerationStructureGeometryKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"geometryType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"geometry" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"geometryType" ptr val
    pokeField @"geometry" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkAccelerationStructureGeometryKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryKHR, sType}

instance Offset "pNext" VkAccelerationStructureGeometryKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryKHR, pNext}

instance Offset "geometryType" VkAccelerationStructureGeometryKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryKHR, geometryType}

instance Offset "geometry" VkAccelerationStructureGeometryKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryKHR, geometry}

instance Offset "flags" VkAccelerationStructureGeometryKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryKHR, flags}

#else

module Vulkan.Types.Struct.VkAccelerationStructureGeometryKHR where

#endif