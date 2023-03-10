{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Struct.VkBindAccelerationStructureMemoryInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBindAccelerationStructureMemoryInfoNV" #-} VkBindAccelerationStructureMemoryInfoNV =
       VkBindAccelerationStructureMemoryInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , accelerationStructure :: VkAccelerationStructureNV
         , memory :: VkDeviceMemory
         , memoryOffset :: VkDeviceSize
         , deviceIndexCount :: #{type uint32_t}
         , pDeviceIndices :: Ptr #{type uint32_t}
         }

instance Storable VkBindAccelerationStructureMemoryInfoNV where
  sizeOf    _ = #{size      VkBindAccelerationStructureMemoryInfoNV}
  alignment _ = #{alignment VkBindAccelerationStructureMemoryInfoNV}

  peek ptr = 
    VkBindAccelerationStructureMemoryInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"accelerationStructure" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memory" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceIndexCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDeviceIndices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"accelerationStructure" ptr val
    pokeField @"memory" ptr val
    pokeField @"memoryOffset" ptr val
    pokeField @"deviceIndexCount" ptr val
    pokeField @"pDeviceIndices" ptr val

instance Offset "sType" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset VkBindAccelerationStructureMemoryInfoNV, sType}

instance Offset "pNext" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset VkBindAccelerationStructureMemoryInfoNV, pNext}

instance Offset "accelerationStructure" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset VkBindAccelerationStructureMemoryInfoNV, accelerationStructure}

instance Offset "memory" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset VkBindAccelerationStructureMemoryInfoNV, memory}

instance Offset "memoryOffset" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset VkBindAccelerationStructureMemoryInfoNV, memoryOffset}

instance Offset "deviceIndexCount" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset VkBindAccelerationStructureMemoryInfoNV, deviceIndexCount}

instance Offset "pDeviceIndices" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset VkBindAccelerationStructureMemoryInfoNV, pDeviceIndices}

#else

module Vulkan.Types.Struct.VkBindAccelerationStructureMemoryInfoNV where

#endif