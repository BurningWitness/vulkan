{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkPhysicalDeviceAccelerationStructurePropertiesKHR}
  alignment _ = #{alignment struct VkPhysicalDeviceAccelerationStructurePropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceAccelerationStructurePropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxGeometryCount" ptr)
       <*> peek (offset @"maxInstanceCount" ptr)
       <*> peek (offset @"maxPrimitiveCount" ptr)
       <*> peek (offset @"maxPerStageDescriptorAccelerationStructures" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindAccelerationStructures" ptr)
       <*> peek (offset @"maxDescriptorSetAccelerationStructures" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindAccelerationStructures" ptr)
       <*> peek (offset @"minAccelerationStructureScratchOffsetAlignment" ptr)

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
  rawOffset = #{offset struct VkPhysicalDeviceAccelerationStructurePropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceAccelerationStructurePropertiesKHR, pNext}

instance Offset "maxGeometryCount" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxGeometryCount}

instance Offset "maxInstanceCount" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxInstanceCount}

instance Offset "maxPrimitiveCount" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxPrimitiveCount}

instance Offset "maxPerStageDescriptorAccelerationStructures" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxPerStageDescriptorAccelerationStructures}

instance Offset "maxPerStageDescriptorUpdateAfterBindAccelerationStructures" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxPerStageDescriptorUpdateAfterBindAccelerationStructures}

instance Offset "maxDescriptorSetAccelerationStructures" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxDescriptorSetAccelerationStructures}

instance Offset "maxDescriptorSetUpdateAfterBindAccelerationStructures" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceAccelerationStructurePropertiesKHR, maxDescriptorSetUpdateAfterBindAccelerationStructures}

instance Offset "minAccelerationStructureScratchOffsetAlignment" VkPhysicalDeviceAccelerationStructurePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceAccelerationStructurePropertiesKHR, minAccelerationStructureScratchOffsetAlignment}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceAccelerationStructurePropertiesKHR where

#endif