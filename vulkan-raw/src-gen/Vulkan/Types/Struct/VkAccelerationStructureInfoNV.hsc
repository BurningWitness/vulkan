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

module Vulkan.Types.Struct.VkAccelerationStructureInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkAccelerationStructureTypeNV
import Vulkan.Types.Enum.VkBuildAccelerationStructureFlagsNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkGeometryNV



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureInfoNV" #-} VkAccelerationStructureInfoNV =
       VkAccelerationStructureInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , type_ :: VkAccelerationStructureTypeNV
         , flags :: VkBuildAccelerationStructureFlagsNV
         , instanceCount :: #{type uint32_t}
         , geometryCount :: #{type uint32_t}
         , pGeometries :: Ptr VkGeometryNV
         }

instance Storable VkAccelerationStructureInfoNV where
  sizeOf    _ = #{size      VkAccelerationStructureInfoNV}
  alignment _ = #{alignment VkAccelerationStructureInfoNV}

  peek ptr = 
    VkAccelerationStructureInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"type" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"instanceCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"geometryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pGeometries" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"type" ptr val
    pokeField @"flags" ptr val
    pokeField @"instanceCount" ptr val
    pokeField @"geometryCount" ptr val
    pokeField @"pGeometries" ptr val

instance Offset "sType" VkAccelerationStructureInfoNV where
  rawOffset = #{offset VkAccelerationStructureInfoNV, sType}

instance Offset "pNext" VkAccelerationStructureInfoNV where
  rawOffset = #{offset VkAccelerationStructureInfoNV, pNext}

instance Offset "type_" VkAccelerationStructureInfoNV where
  rawOffset = #{offset VkAccelerationStructureInfoNV, type}

instance Offset "flags" VkAccelerationStructureInfoNV where
  rawOffset = #{offset VkAccelerationStructureInfoNV, flags}

instance Offset "instanceCount" VkAccelerationStructureInfoNV where
  rawOffset = #{offset VkAccelerationStructureInfoNV, instanceCount}

instance Offset "geometryCount" VkAccelerationStructureInfoNV where
  rawOffset = #{offset VkAccelerationStructureInfoNV, geometryCount}

instance Offset "pGeometries" VkAccelerationStructureInfoNV where
  rawOffset = #{offset VkAccelerationStructureInfoNV, pGeometries}

instance Offset "type" VkAccelerationStructureInfoNV where
  rawOffset = rawOffset @"type_" @VkAccelerationStructureInfoNV

instance HasField "type" VkAccelerationStructureInfoNV VkAccelerationStructureTypeNV where
  getField = getField @"type_" @VkAccelerationStructureInfoNV

#else

module Vulkan.Types.Struct.VkAccelerationStructureInfoNV where

#endif