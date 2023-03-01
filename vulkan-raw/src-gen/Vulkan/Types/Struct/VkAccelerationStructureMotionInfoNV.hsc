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

module Vulkan.Types.Struct.VkAccelerationStructureMotionInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAccelerationStructureMotionInfoFlagsNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureMotionInfoNV" #-} VkAccelerationStructureMotionInfoNV =
       VkAccelerationStructureMotionInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxInstances :: #{type uint32_t}
         , flags :: VkAccelerationStructureMotionInfoFlagsNV
         }

instance Storable VkAccelerationStructureMotionInfoNV where
  sizeOf    _ = #{size      VkAccelerationStructureMotionInfoNV}
  alignment _ = #{alignment VkAccelerationStructureMotionInfoNV}

  peek ptr = 
    VkAccelerationStructureMotionInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxInstances" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxInstances" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkAccelerationStructureMotionInfoNV where
  rawOffset = #{offset VkAccelerationStructureMotionInfoNV, sType}

instance Offset "pNext" VkAccelerationStructureMotionInfoNV where
  rawOffset = #{offset VkAccelerationStructureMotionInfoNV, pNext}

instance Offset "maxInstances" VkAccelerationStructureMotionInfoNV where
  rawOffset = #{offset VkAccelerationStructureMotionInfoNV, maxInstances}

instance Offset "flags" VkAccelerationStructureMotionInfoNV where
  rawOffset = #{offset VkAccelerationStructureMotionInfoNV, flags}

#else

module Vulkan.Types.Struct.VkAccelerationStructureMotionInfoNV where

#endif