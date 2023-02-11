{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkAccelerationStructureMotionInfoNV}
  alignment _ = #{alignment struct VkAccelerationStructureMotionInfoNV}

  peek ptr = 
    VkAccelerationStructureMotionInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxInstances" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxInstances" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkAccelerationStructureMotionInfoNV where
  rawOffset = #{offset struct VkAccelerationStructureMotionInfoNV, sType}

instance Offset "pNext" VkAccelerationStructureMotionInfoNV where
  rawOffset = #{offset struct VkAccelerationStructureMotionInfoNV, pNext}

instance Offset "maxInstances" VkAccelerationStructureMotionInfoNV where
  rawOffset = #{offset struct VkAccelerationStructureMotionInfoNV, maxInstances}

instance Offset "flags" VkAccelerationStructureMotionInfoNV where
  rawOffset = #{offset struct VkAccelerationStructureMotionInfoNV, flags}

#else

module Vulkan.Types.Struct.VkAccelerationStructureMotionInfoNV where

#endif