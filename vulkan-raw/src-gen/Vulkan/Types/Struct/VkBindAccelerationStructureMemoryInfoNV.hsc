{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkBindAccelerationStructureMemoryInfoNV}
  alignment _ = #{alignment struct VkBindAccelerationStructureMemoryInfoNV}

  peek ptr = 
    VkBindAccelerationStructureMemoryInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"accelerationStructure" ptr)
       <*> peek (offset @"memory" ptr)
       <*> peek (offset @"memoryOffset" ptr)
       <*> peek (offset @"deviceIndexCount" ptr)
       <*> peek (offset @"pDeviceIndices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"accelerationStructure" ptr val
    pokeField @"memory" ptr val
    pokeField @"memoryOffset" ptr val
    pokeField @"deviceIndexCount" ptr val
    pokeField @"pDeviceIndices" ptr val

instance Offset "sType" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset struct VkBindAccelerationStructureMemoryInfoNV, sType}

instance Offset "pNext" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset struct VkBindAccelerationStructureMemoryInfoNV, pNext}

instance Offset "accelerationStructure" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset struct VkBindAccelerationStructureMemoryInfoNV, accelerationStructure}

instance Offset "memory" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset struct VkBindAccelerationStructureMemoryInfoNV, memory}

instance Offset "memoryOffset" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset struct VkBindAccelerationStructureMemoryInfoNV, memoryOffset}

instance Offset "deviceIndexCount" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset struct VkBindAccelerationStructureMemoryInfoNV, deviceIndexCount}

instance Offset "pDeviceIndices" VkBindAccelerationStructureMemoryInfoNV where
  rawOffset = #{offset struct VkBindAccelerationStructureMemoryInfoNV, pDeviceIndices}

#else

module Vulkan.Types.Struct.VkBindAccelerationStructureMemoryInfoNV where

#endif