{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkAccelerationStructureGeometryKHR}
  alignment _ = #{alignment struct VkAccelerationStructureGeometryKHR}

  peek ptr = 
    VkAccelerationStructureGeometryKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"geometryType" ptr)
       <*> peek (offset @"geometry" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"geometryType" ptr val
    pokeField @"geometry" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkAccelerationStructureGeometryKHR where
  rawOffset = #{offset struct VkAccelerationStructureGeometryKHR, sType}

instance Offset "pNext" VkAccelerationStructureGeometryKHR where
  rawOffset = #{offset struct VkAccelerationStructureGeometryKHR, pNext}

instance Offset "geometryType" VkAccelerationStructureGeometryKHR where
  rawOffset = #{offset struct VkAccelerationStructureGeometryKHR, geometryType}

instance Offset "geometry" VkAccelerationStructureGeometryKHR where
  rawOffset = #{offset struct VkAccelerationStructureGeometryKHR, geometry}

instance Offset "flags" VkAccelerationStructureGeometryKHR where
  rawOffset = #{offset struct VkAccelerationStructureGeometryKHR, flags}

#else

module Vulkan.Types.Struct.VkAccelerationStructureGeometryKHR where

#endif