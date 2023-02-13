{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkAccelerationStructureCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkAccelerationStructureCreateFlagsKHR
import Vulkan.Types.Enum.VkAccelerationStructureTypeKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureCreateInfoKHR" #-} VkAccelerationStructureCreateInfoKHR =
       VkAccelerationStructureCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , createFlags :: VkAccelerationStructureCreateFlagsKHR
         , buffer :: VkBuffer
         , offset :: VkDeviceSize -- ^ Specified in bytes
         , size :: VkDeviceSize
         , type_ :: VkAccelerationStructureTypeKHR
         , deviceAddress :: VkDeviceAddress
         }

instance Storable VkAccelerationStructureCreateInfoKHR where
  sizeOf    _ = #{size      VkAccelerationStructureCreateInfoKHR}
  alignment _ = #{alignment VkAccelerationStructureCreateInfoKHR}

  peek ptr = 
    VkAccelerationStructureCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"createFlags" ptr)
       <*> peek (offset @"buffer" ptr)
       <*> peek (offset @"offset" ptr)
       <*> peek (offset @"size" ptr)
       <*> peek (offset @"type" ptr)
       <*> peek (offset @"deviceAddress" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"createFlags" ptr val
    pokeField @"buffer" ptr val
    pokeField @"offset" ptr val
    pokeField @"size" ptr val
    pokeField @"type" ptr val
    pokeField @"deviceAddress" ptr val

instance Offset "sType" VkAccelerationStructureCreateInfoKHR where
  rawOffset = #{offset VkAccelerationStructureCreateInfoKHR, sType}

instance Offset "pNext" VkAccelerationStructureCreateInfoKHR where
  rawOffset = #{offset VkAccelerationStructureCreateInfoKHR, pNext}

instance Offset "createFlags" VkAccelerationStructureCreateInfoKHR where
  rawOffset = #{offset VkAccelerationStructureCreateInfoKHR, createFlags}

instance Offset "buffer" VkAccelerationStructureCreateInfoKHR where
  rawOffset = #{offset VkAccelerationStructureCreateInfoKHR, buffer}

instance Offset "offset" VkAccelerationStructureCreateInfoKHR where
  rawOffset = #{offset VkAccelerationStructureCreateInfoKHR, offset}

instance Offset "size" VkAccelerationStructureCreateInfoKHR where
  rawOffset = #{offset VkAccelerationStructureCreateInfoKHR, size}

instance Offset "type_" VkAccelerationStructureCreateInfoKHR where
  rawOffset = #{offset VkAccelerationStructureCreateInfoKHR, type}

instance Offset "deviceAddress" VkAccelerationStructureCreateInfoKHR where
  rawOffset = #{offset VkAccelerationStructureCreateInfoKHR, deviceAddress}

instance Offset "type" VkAccelerationStructureCreateInfoKHR where
  rawOffset = rawOffset @"type_" @VkAccelerationStructureCreateInfoKHR

instance HasField "type" VkAccelerationStructureCreateInfoKHR VkAccelerationStructureTypeKHR where
  getField = getField @"type_" @VkAccelerationStructureCreateInfoKHR

#else

module Vulkan.Types.Struct.VkAccelerationStructureCreateInfoKHR where

#endif