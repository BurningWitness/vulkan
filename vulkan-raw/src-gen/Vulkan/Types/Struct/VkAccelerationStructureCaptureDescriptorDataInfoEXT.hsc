{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer && VK_KHR_acceleration_structure && VK_NV_ray_tracing

module Vulkan.Types.Struct.VkAccelerationStructureCaptureDescriptorDataInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureCaptureDescriptorDataInfoEXT" #-} VkAccelerationStructureCaptureDescriptorDataInfoEXT =
       VkAccelerationStructureCaptureDescriptorDataInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , accelerationStructure :: VkAccelerationStructureKHR
         , accelerationStructureNV :: VkAccelerationStructureNV
         }

instance Storable VkAccelerationStructureCaptureDescriptorDataInfoEXT where
  sizeOf    _ = #{size      VkAccelerationStructureCaptureDescriptorDataInfoEXT}
  alignment _ = #{alignment VkAccelerationStructureCaptureDescriptorDataInfoEXT}

  peek ptr = 
    VkAccelerationStructureCaptureDescriptorDataInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"accelerationStructure" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"accelerationStructureNV" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"accelerationStructure" ptr val
    pokeField @"accelerationStructureNV" ptr val

instance Offset "sType" VkAccelerationStructureCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkAccelerationStructureCaptureDescriptorDataInfoEXT, sType}

instance Offset "pNext" VkAccelerationStructureCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkAccelerationStructureCaptureDescriptorDataInfoEXT, pNext}

instance Offset "accelerationStructure" VkAccelerationStructureCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkAccelerationStructureCaptureDescriptorDataInfoEXT, accelerationStructure}

instance Offset "accelerationStructureNV" VkAccelerationStructureCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkAccelerationStructureCaptureDescriptorDataInfoEXT, accelerationStructureNV}

#else

module Vulkan.Types.Struct.VkAccelerationStructureCaptureDescriptorDataInfoEXT where

#endif