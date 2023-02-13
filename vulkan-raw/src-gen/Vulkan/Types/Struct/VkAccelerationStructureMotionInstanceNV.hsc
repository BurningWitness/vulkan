{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing_motion_blur

module Vulkan.Types.Struct.VkAccelerationStructureMotionInstanceNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkAccelerationStructureMotionInstanceFlagsNV
import Vulkan.Types.Enum.VkAccelerationStructureMotionInstanceTypeNV
import Vulkan.Types.Union.VkAccelerationStructureMotionInstanceDataNV



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureMotionInstanceNV" #-} VkAccelerationStructureMotionInstanceNV =
       VkAccelerationStructureMotionInstanceNV
         { type_ :: VkAccelerationStructureMotionInstanceTypeNV
         , flags :: VkAccelerationStructureMotionInstanceFlagsNV
         , data_ :: VkAccelerationStructureMotionInstanceDataNV
         }

instance Storable VkAccelerationStructureMotionInstanceNV where
  sizeOf    _ = #{size      VkAccelerationStructureMotionInstanceNV}
  alignment _ = #{alignment VkAccelerationStructureMotionInstanceNV}

  peek ptr = 
    VkAccelerationStructureMotionInstanceNV
       <$> peek (offset @"type" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"data" ptr)

  poke ptr val = do
    pokeField @"type" ptr val
    pokeField @"flags" ptr val
    pokeField @"data" ptr val

instance Offset "type_" VkAccelerationStructureMotionInstanceNV where
  rawOffset = #{offset VkAccelerationStructureMotionInstanceNV, type}

instance Offset "flags" VkAccelerationStructureMotionInstanceNV where
  rawOffset = #{offset VkAccelerationStructureMotionInstanceNV, flags}

instance Offset "data_" VkAccelerationStructureMotionInstanceNV where
  rawOffset = #{offset VkAccelerationStructureMotionInstanceNV, data}

instance Offset "type" VkAccelerationStructureMotionInstanceNV where
  rawOffset = rawOffset @"type_" @VkAccelerationStructureMotionInstanceNV

instance Offset "data" VkAccelerationStructureMotionInstanceNV where
  rawOffset = rawOffset @"data_" @VkAccelerationStructureMotionInstanceNV

instance HasField "type" VkAccelerationStructureMotionInstanceNV VkAccelerationStructureMotionInstanceTypeNV where
  getField = getField @"type_" @VkAccelerationStructureMotionInstanceNV

instance HasField "data" VkAccelerationStructureMotionInstanceNV VkAccelerationStructureMotionInstanceDataNV where
  getField = getField @"data_" @VkAccelerationStructureMotionInstanceNV

#else

module Vulkan.Types.Struct.VkAccelerationStructureMotionInstanceNV where

#endif