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

module Vulkan.Types.Struct.VkPhysicalDeviceAccelerationStructurePropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceAccelerationStructurePropertiesKHR" #-} VkPhysicalDeviceAccelerationStructurePropertiesKHR =
       VkPhysicalDeviceAccelerationStructurePropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxGeometryCount :: #{type uint64_t}
         , maxInstanceCount :: #{type uint64_t}
         , maxPrimitiveCount :: #{type uint64_t}
         , maxPerStageDescriptorAccelerationStructures :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindAccelerationStructures :: #{type uint32_t}
         , maxDescriptorSetAccelerationStructures :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindAccelerationStructures :: #{type uint32_t}
         , minAccelerationStructureScratchOffsetAlignment :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceAccelerationStructurePropertiesKHR}
  alignment _ = #{alignment VkPhysicalDeviceAccelerationStructurePropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceAccelerationStructurePropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxGeometryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxInstanceCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPrimitiveCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageDescriptorAccelerationStructures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPerStageDescriptorUpdateAfterBindAccelerationStructures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetAccelerationStructures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDescriptorSetUpdateAfterBindAccelerationStructures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minAccelerationStructureScratchOffsetAlignment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxGeometryCount" ptr val
    pokeField @"maxInstanceCount" ptr val
    pokeField @"maxPrimitiveCount" ptr val
    pokeField @"maxPerStageDescriptorAccelerationStructures" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindAccelerationStructures" ptr val
    pokeField @"maxDescriptorSetAccelerationStructures" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindAccelerationStructures" ptr val
    pokeField @"minAccelerationStructureScratchOffsetAlignment" ptr val

instance Offset "sType" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructurePropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructurePropertiesKHR, pNext}

instance Offset "maxGeometryCount" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxGeometryCount}

instance Offset "maxInstanceCount" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxInstanceCount}

instance Offset "maxPrimitiveCount" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxPrimitiveCount}

instance Offset "maxPerStageDescriptorAccelerationStructures" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxPerStageDescriptorAccelerationStructures}

instance Offset "maxPerStageDescriptorUpdateAfterBindAccelerationStructures" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxPerStageDescriptorUpdateAfterBindAccelerationStructures}

instance Offset "maxDescriptorSetAccelerationStructures" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxDescriptorSetAccelerationStructures}

instance Offset "maxDescriptorSetUpdateAfterBindAccelerationStructures" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxDescriptorSetUpdateAfterBindAccelerationStructures}

instance Offset "minAccelerationStructureScratchOffsetAlignment" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructurePropertiesKHR, minAccelerationStructureScratchOffsetAlignment}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceAccelerationStructurePropertiesKHR where

#endif