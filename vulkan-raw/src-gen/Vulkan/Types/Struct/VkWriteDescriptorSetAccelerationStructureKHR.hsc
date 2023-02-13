{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkWriteDescriptorSetAccelerationStructureKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkWriteDescriptorSetAccelerationStructureKHR" #-} VkWriteDescriptorSetAccelerationStructureKHR =
       VkWriteDescriptorSetAccelerationStructureKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , accelerationStructureCount :: #{type uint32_t}
         , pAccelerationStructures :: Ptr VkAccelerationStructureKHR
         }

instance Storable VkWriteDescriptorSetAccelerationStructureKHR where
  sizeOf    _ = #{size      VkWriteDescriptorSetAccelerationStructureKHR}
  alignment _ = #{alignment VkWriteDescriptorSetAccelerationStructureKHR}

  peek ptr = 
    VkWriteDescriptorSetAccelerationStructureKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"accelerationStructureCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pAccelerationStructures" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"accelerationStructureCount" ptr val
    pokeField @"pAccelerationStructures" ptr val

instance Offset "sType" VkWriteDescriptorSetAccelerationStructureKHR where
  rawOffset = #{offset VkWriteDescriptorSetAccelerationStructureKHR, sType}

instance Offset "pNext" VkWriteDescriptorSetAccelerationStructureKHR where
  rawOffset = #{offset VkWriteDescriptorSetAccelerationStructureKHR, pNext}

instance Offset "accelerationStructureCount" VkWriteDescriptorSetAccelerationStructureKHR where
  rawOffset = #{offset VkWriteDescriptorSetAccelerationStructureKHR, accelerationStructureCount}

instance Offset "pAccelerationStructures" VkWriteDescriptorSetAccelerationStructureKHR where
  rawOffset = #{offset VkWriteDescriptorSetAccelerationStructureKHR, pAccelerationStructures}

#else

module Vulkan.Types.Struct.VkWriteDescriptorSetAccelerationStructureKHR where

#endif