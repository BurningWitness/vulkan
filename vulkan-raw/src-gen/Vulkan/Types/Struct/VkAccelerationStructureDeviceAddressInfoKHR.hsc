{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkAccelerationStructureDeviceAddressInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureDeviceAddressInfoKHR" #-} VkAccelerationStructureDeviceAddressInfoKHR =
       VkAccelerationStructureDeviceAddressInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , accelerationStructure :: VkAccelerationStructureKHR
         }

instance Storable VkAccelerationStructureDeviceAddressInfoKHR where
  sizeOf    _ = #{size      VkAccelerationStructureDeviceAddressInfoKHR}
  alignment _ = #{alignment VkAccelerationStructureDeviceAddressInfoKHR}

  peek ptr = 
    VkAccelerationStructureDeviceAddressInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"accelerationStructure" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"accelerationStructure" ptr val

instance Offset "sType" VkAccelerationStructureDeviceAddressInfoKHR where
  rawOffset = #{offset VkAccelerationStructureDeviceAddressInfoKHR, sType}

instance Offset "pNext" VkAccelerationStructureDeviceAddressInfoKHR where
  rawOffset = #{offset VkAccelerationStructureDeviceAddressInfoKHR, pNext}

instance Offset "accelerationStructure" VkAccelerationStructureDeviceAddressInfoKHR where
  rawOffset = #{offset VkAccelerationStructureDeviceAddressInfoKHR, accelerationStructure}

#else

module Vulkan.Types.Struct.VkAccelerationStructureDeviceAddressInfoKHR where

#endif