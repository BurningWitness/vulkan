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
  sizeOf    _ = #{size      VkAccelerationStructureMemoryRequirementsInfoNV}
  alignment _ = #{alignment VkAccelerationStructureMemoryRequirementsInfoNV}

  peek ptr = 
    VkAccelerationStructureMemoryRequirementsInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"type" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"accelerationStructure" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"type" ptr val
    pokeField @"accelerationStructure" ptr val

instance Offset "sType" VkAccelerationStructureMemoryRequirementsInfoNV where
  rawOffset = #{offset VkAccelerationStructureMemoryRequirementsInfoNV, sType}

instance Offset "pNext" VkAccelerationStructureMemoryRequirementsInfoNV where
  rawOffset = #{offset VkAccelerationStructureMemoryRequirementsInfoNV, pNext}

instance Offset "type_" VkAccelerationStructureMemoryRequirementsInfoNV where
  rawOffset = #{offset VkAccelerationStructureMemoryRequirementsInfoNV, type}

instance Offset "accelerationStructure" VkAccelerationStructureMemoryRequirementsInfoNV where
  rawOffset = #{offset VkAccelerationStructureMemoryRequirementsInfoNV, accelerationStructure}

instance Offset "type" VkAccelerationStructureMemoryRequirementsInfoNV where
  rawOffset = rawOffset @"type_" @VkAccelerationStructureMemoryRequirementsInfoNV

instance HasField "type" VkAccelerationStructureMemoryRequirementsInfoNV VkAccelerationStructureMemoryRequirementsTypeNV where
  getField = getField @"type_" @VkAccelerationStructureMemoryRequirementsInfoNV

#else

module Vulkan.Types.Struct.VkAccelerationStructureMemoryRequirementsInfoNV where

#endif