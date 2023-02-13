{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing_motion_blur

module Vulkan.Types.Struct.VkAccelerationStructureSRTMotionInstanceNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureSRTMotionInstanceNV" #-} VkAccelerationStructureSRTMotionInstanceNV = VkAccelerationStructureSRTMotionInstanceNV

instance Storable VkAccelerationStructureSRTMotionInstanceNV where
  sizeOf    _ = #{size      VkAccelerationStructureSRTMotionInstanceNV}
  alignment _ = #{alignment VkAccelerationStructureSRTMotionInstanceNV}

  peek _ptr = pure VkAccelerationStructureSRTMotionInstanceNV

  poke _ptr _val = return ()

#else

module Vulkan.Types.Struct.VkAccelerationStructureSRTMotionInstanceNV where

#endif