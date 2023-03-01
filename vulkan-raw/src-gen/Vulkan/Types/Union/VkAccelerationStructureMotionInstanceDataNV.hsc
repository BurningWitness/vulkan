{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing_motion_blur

module Vulkan.Types.Union.VkAccelerationStructureMotionInstanceDataNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkAccelerationStructureInstanceKHR
import Vulkan.Types.Struct.VkAccelerationStructureMatrixMotionInstanceNV
import Vulkan.Types.Struct.VkAccelerationStructureSRTMotionInstanceNV



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureMotionInstanceDataNV" #-} VkAccelerationStructureMotionInstanceDataNV =
       VkAccelerationStructureMotionInstanceDataNV
         { staticInstance :: VkAccelerationStructureInstanceKHR
         , matrixMotionInstance :: VkAccelerationStructureMatrixMotionInstanceNV
         , srtMotionInstance :: VkAccelerationStructureSRTMotionInstanceNV
         }

instance Storable VkAccelerationStructureMotionInstanceDataNV where
  sizeOf    _ = #{size      VkAccelerationStructureMotionInstanceDataNV}
  alignment _ = #{alignment VkAccelerationStructureMotionInstanceDataNV}

  peek ptr = 
    VkAccelerationStructureMotionInstanceDataNV
       <$> peek (Foreign.Storable.Offset.offset @"staticInstance" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"matrixMotionInstance" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srtMotionInstance" ptr)

  poke ptr val = do
    pokeField @"staticInstance" ptr val
    pokeField @"matrixMotionInstance" ptr val
    pokeField @"srtMotionInstance" ptr val

instance Offset "staticInstance" VkAccelerationStructureMotionInstanceDataNV where
  rawOffset = #{offset VkAccelerationStructureMotionInstanceDataNV, staticInstance}

instance Offset "matrixMotionInstance" VkAccelerationStructureMotionInstanceDataNV where
  rawOffset = #{offset VkAccelerationStructureMotionInstanceDataNV, matrixMotionInstance}

instance Offset "srtMotionInstance" VkAccelerationStructureMotionInstanceDataNV where
  rawOffset = #{offset VkAccelerationStructureMotionInstanceDataNV, srtMotionInstance}

#else

module Vulkan.Types.Union.VkAccelerationStructureMotionInstanceDataNV where

#endif