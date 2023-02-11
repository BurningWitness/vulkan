{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Struct.VkAccelerationStructureMemoryRequirementsInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkAccelerationStructureMemoryRequirementsTypeNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureMemoryRequirementsInfoNV" #-} VkAccelerationStructureMemoryRequirementsInfoNV =
       VkAccelerationStructureMemoryRequirementsInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , type_ :: VkAccelerationStructureMemoryRequirementsTypeNV
         , accelerationStructure :: VkAccelerationStructureNV
         }

instance Storable VkAccelerationStructureMemoryRequirementsInfoNV where
  sizeOf    _ = #{size      struct VkAccelerationStructureMemoryRequirementsInfoNV}
  alignment _ = #{alignment struct VkAccelerationStructureMemoryRequirementsInfoNV}

  peek ptr = 
    VkAccelerationStructureMemoryRequirementsInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"type" ptr)
       <*> peek (offset @"accelerationStructure" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"type" ptr val
    pokeField @"accelerationStructure" ptr val

instance Offset "sType" VkAccelerationStructureMemoryRequirementsInfoNV where
  rawOffset = #{offset struct VkAccelerationStructureMemoryRequirementsInfoNV, sType}

instance Offset "pNext" VkAccelerationStructureMemoryRequirementsInfoNV where
  rawOffset = #{offset struct VkAccelerationStructureMemoryRequirementsInfoNV, pNext}

instance Offset "type_" VkAccelerationStructureMemoryRequirementsInfoNV where
  rawOffset = #{offset struct VkAccelerationStructureMemoryRequirementsInfoNV, type}

instance Offset "accelerationStructure" VkAccelerationStructureMemoryRequirementsInfoNV where
  rawOffset = #{offset struct VkAccelerationStructureMemoryRequirementsInfoNV, accelerationStructure}

instance Offset "type" VkAccelerationStructureMemoryRequirementsInfoNV where
  rawOffset = rawOffset @"type_" @VkAccelerationStructureMemoryRequirementsInfoNV

instance HasField "type" VkAccelerationStructureMemoryRequirementsInfoNV VkAccelerationStructureMemoryRequirementsTypeNV where
  getField = getField @"type_" @VkAccelerationStructureMemoryRequirementsInfoNV

#else

module Vulkan.Types.Struct.VkAccelerationStructureMemoryRequirementsInfoNV where

#endif