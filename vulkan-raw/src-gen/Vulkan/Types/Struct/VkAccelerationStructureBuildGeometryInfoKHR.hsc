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

module Vulkan.Types.Struct.VkAccelerationStructureBuildGeometryInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkAccelerationStructureTypeKHR
import Vulkan.Types.Enum.VkBuildAccelerationStructureFlagsKHR
import Vulkan.Types.Enum.VkBuildAccelerationStructureModeKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAccelerationStructureGeometryKHR
import Vulkan.Types.Union.VkDeviceOrHostAddressKHR



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureBuildGeometryInfoKHR" #-} VkAccelerationStructureBuildGeometryInfoKHR =
       VkAccelerationStructureBuildGeometryInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , type_ :: VkAccelerationStructureTypeKHR
         , flags :: VkBuildAccelerationStructureFlagsKHR
         , mode :: VkBuildAccelerationStructureModeKHR
         , srcAccelerationStructure :: VkAccelerationStructureKHR
         , dstAccelerationStructure :: VkAccelerationStructureKHR
         , geometryCount :: #{type uint32_t}
         , pGeometries :: Ptr VkAccelerationStructureGeometryKHR
         , ppGeometries :: Ptr (Ptr VkAccelerationStructureGeometryKHR)
         , scratchData :: VkDeviceOrHostAddressKHR
         }

instance Storable VkAccelerationStructureBuildGeometryInfoKHR where
  sizeOf    _ = #{size      VkAccelerationStructureBuildGeometryInfoKHR}
  alignment _ = #{alignment VkAccelerationStructureBuildGeometryInfoKHR}

  peek ptr = 
    VkAccelerationStructureBuildGeometryInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"type" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"mode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcAccelerationStructure" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstAccelerationStructure" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"geometryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pGeometries" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ppGeometries" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"scratchData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"type" ptr val
    pokeField @"flags" ptr val
    pokeField @"mode" ptr val
    pokeField @"srcAccelerationStructure" ptr val
    pokeField @"dstAccelerationStructure" ptr val
    pokeField @"geometryCount" ptr val
    pokeField @"pGeometries" ptr val
    pokeField @"ppGeometries" ptr val
    pokeField @"scratchData" ptr val

instance Offset "sType" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildGeometryInfoKHR, sType}

instance Offset "pNext" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildGeometryInfoKHR, pNext}

instance Offset "type_" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildGeometryInfoKHR, type}

instance Offset "flags" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildGeometryInfoKHR, flags}

instance Offset "mode" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildGeometryInfoKHR, mode}

instance Offset "srcAccelerationStructure" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildGeometryInfoKHR, srcAccelerationStructure}

instance Offset "dstAccelerationStructure" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildGeometryInfoKHR, dstAccelerationStructure}

instance Offset "geometryCount" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildGeometryInfoKHR, geometryCount}

instance Offset "pGeometries" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildGeometryInfoKHR, pGeometries}

instance Offset "ppGeometries" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildGeometryInfoKHR, ppGeometries}

instance Offset "scratchData" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildGeometryInfoKHR, scratchData}

instance Offset "type" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = rawOffset @"type_" @VkAccelerationStructureBuildGeometryInfoKHR

instance HasField "type" VkAccelerationStructureBuildGeometryInfoKHR VkAccelerationStructureTypeKHR where
  getField = getField @"type_" @VkAccelerationStructureBuildGeometryInfoKHR

#else

module Vulkan.Types.Struct.VkAccelerationStructureBuildGeometryInfoKHR where

#endif