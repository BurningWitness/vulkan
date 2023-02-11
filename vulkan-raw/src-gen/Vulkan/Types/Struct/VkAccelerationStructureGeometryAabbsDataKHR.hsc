{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkAccelerationStructureGeometryAabbsDataKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Union.VkDeviceOrHostAddressConstKHR



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureGeometryAabbsDataKHR" #-} VkAccelerationStructureGeometryAabbsDataKHR =
       VkAccelerationStructureGeometryAabbsDataKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , data_ :: VkDeviceOrHostAddressConstKHR
         , stride :: VkDeviceSize
         }

instance Storable VkAccelerationStructureGeometryAabbsDataKHR where
  sizeOf    _ = #{size      struct VkAccelerationStructureGeometryAabbsDataKHR}
  alignment _ = #{alignment struct VkAccelerationStructureGeometryAabbsDataKHR}

  peek ptr = 
    VkAccelerationStructureGeometryAabbsDataKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"data" ptr)
       <*> peek (offset @"stride" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"data" ptr val
    pokeField @"stride" ptr val

instance Offset "sType" VkAccelerationStructureGeometryAabbsDataKHR where
  rawOffset = #{offset struct VkAccelerationStructureGeometryAabbsDataKHR, sType}

instance Offset "pNext" VkAccelerationStructureGeometryAabbsDataKHR where
  rawOffset = #{offset struct VkAccelerationStructureGeometryAabbsDataKHR, pNext}

instance Offset "data_" VkAccelerationStructureGeometryAabbsDataKHR where
  rawOffset = #{offset struct VkAccelerationStructureGeometryAabbsDataKHR, data}

instance Offset "stride" VkAccelerationStructureGeometryAabbsDataKHR where
  rawOffset = #{offset struct VkAccelerationStructureGeometryAabbsDataKHR, stride}

instance Offset "data" VkAccelerationStructureGeometryAabbsDataKHR where
  rawOffset = rawOffset @"data_" @VkAccelerationStructureGeometryAabbsDataKHR

instance HasField "data" VkAccelerationStructureGeometryAabbsDataKHR VkDeviceOrHostAddressConstKHR where
  getField = getField @"data_" @VkAccelerationStructureGeometryAabbsDataKHR

#else

module Vulkan.Types.Struct.VkAccelerationStructureGeometryAabbsDataKHR where

#endif