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

module Vulkan.Types.Struct.VkAccelerationStructureInstanceNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureInstanceNV" #-} VkAccelerationStructureInstanceNV = VkAccelerationStructureInstanceNV

instance Storable VkAccelerationStructureInstanceNV where
  sizeOf    _ = #{size      VkAccelerationStructureInstanceNV}
  alignment _ = #{alignment VkAccelerationStructureInstanceNV}

  peek _ptr = pure VkAccelerationStructureInstanceNV

  poke _ptr _val = return ()

#else

module Vulkan.Types.Struct.VkAccelerationStructureInstanceNV where

#endif