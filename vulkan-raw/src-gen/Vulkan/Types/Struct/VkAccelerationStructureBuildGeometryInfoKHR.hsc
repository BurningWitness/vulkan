{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkAccelerationStructureBuildGeometryInfoKHR}
  alignment _ = #{alignment struct VkAccelerationStructureBuildGeometryInfoKHR}

  peek ptr = 
    VkAccelerationStructureBuildGeometryInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"type" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"mode" ptr)
       <*> peek (offset @"srcAccelerationStructure" ptr)
       <*> peek (offset @"dstAccelerationStructure" ptr)
       <*> peek (offset @"geometryCount" ptr)
       <*> peek (offset @"pGeometries" ptr)
       <*> peek (offset @"ppGeometries" ptr)
       <*> peek (offset @"scratchData" ptr)

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
  rawOffset = #{offset struct VkAccelerationStructureBuildGeometryInfoKHR, sType}

instance Offset "pNext" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildGeometryInfoKHR, pNext}

instance Offset "type_" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildGeometryInfoKHR, type}

instance Offset "flags" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildGeometryInfoKHR, flags}

instance Offset "mode" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildGeometryInfoKHR, mode}

instance Offset "srcAccelerationStructure" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildGeometryInfoKHR, srcAccelerationStructure}

instance Offset "dstAccelerationStructure" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildGeometryInfoKHR, dstAccelerationStructure}

instance Offset "geometryCount" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildGeometryInfoKHR, geometryCount}

instance Offset "pGeometries" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildGeometryInfoKHR, pGeometries}

instance Offset "ppGeometries" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildGeometryInfoKHR, ppGeometries}

instance Offset "scratchData" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildGeometryInfoKHR, scratchData}

instance Offset "type" VkAccelerationStructureBuildGeometryInfoKHR where
  rawOffset = rawOffset @"type_" @VkAccelerationStructureBuildGeometryInfoKHR

instance HasField "type" VkAccelerationStructureBuildGeometryInfoKHR VkAccelerationStructureTypeKHR where
  getField = getField @"type_" @VkAccelerationStructureBuildGeometryInfoKHR

#else

module Vulkan.Types.Struct.VkAccelerationStructureBuildGeometryInfoKHR where

#endif