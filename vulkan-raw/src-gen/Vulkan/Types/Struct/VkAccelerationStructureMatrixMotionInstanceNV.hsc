{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing_motion_blur

module Vulkan.Types.Struct.VkAccelerationStructureMatrixMotionInstanceNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureMatrixMotionInstanceNV" #-} VkAccelerationStructureMatrixMotionInstanceNV = VkAccelerationStructureMatrixMotionInstanceNV

instance Storable VkAccelerationStructureMatrixMotionInstanceNV where
  sizeOf    _ = #{size      struct VkAccelerationStructureMatrixMotionInstanceNV}
  alignment _ = #{alignment struct VkAccelerationStructureMatrixMotionInstanceNV}

  peek _ptr = pure VkAccelerationStructureMatrixMotionInstanceNV

  poke _ptr _val = return ()

#else

module Vulkan.Types.Struct.VkAccelerationStructureMatrixMotionInstanceNV where

#endif