{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Struct.VkWriteDescriptorSetAccelerationStructureNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkWriteDescriptorSetAccelerationStructureNV" #-} VkWriteDescriptorSetAccelerationStructureNV =
       VkWriteDescriptorSetAccelerationStructureNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , accelerationStructureCount :: #{type uint32_t}
         , pAccelerationStructures :: Ptr VkAccelerationStructureNV
         }

instance Storable VkWriteDescriptorSetAccelerationStructureNV where
  sizeOf    _ = #{size      struct VkWriteDescriptorSetAccelerationStructureNV}
  alignment _ = #{alignment struct VkWriteDescriptorSetAccelerationStructureNV}

  peek ptr = 
    VkWriteDescriptorSetAccelerationStructureNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"accelerationStructureCount" ptr)
       <*> peek (offset @"pAccelerationStructures" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"accelerationStructureCount" ptr val
    pokeField @"pAccelerationStructures" ptr val

instance Offset "sType" VkWriteDescriptorSetAccelerationStructureNV where
  rawOffset = #{offset struct VkWriteDescriptorSetAccelerationStructureNV, sType}

instance Offset "pNext" VkWriteDescriptorSetAccelerationStructureNV where
  rawOffset = #{offset struct VkWriteDescriptorSetAccelerationStructureNV, pNext}

instance Offset "accelerationStructureCount" VkWriteDescriptorSetAccelerationStructureNV where
  rawOffset = #{offset struct VkWriteDescriptorSetAccelerationStructureNV, accelerationStructureCount}

instance Offset "pAccelerationStructures" VkWriteDescriptorSetAccelerationStructureNV where
  rawOffset = #{offset struct VkWriteDescriptorSetAccelerationStructureNV, pAccelerationStructures}

#else

module Vulkan.Types.Struct.VkWriteDescriptorSetAccelerationStructureNV where

#endif