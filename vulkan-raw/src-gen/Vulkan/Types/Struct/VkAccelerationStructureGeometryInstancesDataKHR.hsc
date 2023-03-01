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

module Vulkan.Types.Struct.VkAccelerationStructureGeometryInstancesDataKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Union.VkDeviceOrHostAddressConstKHR



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureGeometryInstancesDataKHR" #-} VkAccelerationStructureGeometryInstancesDataKHR =
       VkAccelerationStructureGeometryInstancesDataKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , arrayOfPointers :: VkBool32
         , data_ :: VkDeviceOrHostAddressConstKHR
         }

instance Storable VkAccelerationStructureGeometryInstancesDataKHR where
  sizeOf    _ = #{size      VkAccelerationStructureGeometryInstancesDataKHR}
  alignment _ = #{alignment VkAccelerationStructureGeometryInstancesDataKHR}

  peek ptr = 
    VkAccelerationStructureGeometryInstancesDataKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"arrayOfPointers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"data" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"arrayOfPointers" ptr val
    pokeField @"data" ptr val

instance Offset "sType" VkAccelerationStructureGeometryInstancesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryInstancesDataKHR, sType}

instance Offset "pNext" VkAccelerationStructureGeometryInstancesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryInstancesDataKHR, pNext}

instance Offset "arrayOfPointers" VkAccelerationStructureGeometryInstancesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryInstancesDataKHR, arrayOfPointers}

instance Offset "data_" VkAccelerationStructureGeometryInstancesDataKHR where
  rawOffset = #{offset VkAccelerationStructureGeometryInstancesDataKHR, data}

instance Offset "data" VkAccelerationStructureGeometryInstancesDataKHR where
  rawOffset = rawOffset @"data_" @VkAccelerationStructureGeometryInstancesDataKHR

instance HasField "data" VkAccelerationStructureGeometryInstancesDataKHR VkDeviceOrHostAddressConstKHR where
  getField = getField @"data_" @VkAccelerationStructureGeometryInstancesDataKHR

#else

module Vulkan.Types.Struct.VkAccelerationStructureGeometryInstancesDataKHR where

#endif