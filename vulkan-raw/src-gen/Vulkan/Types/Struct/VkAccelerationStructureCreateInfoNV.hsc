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

module Vulkan.Types.Struct.VkAccelerationStructureCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAccelerationStructureInfoNV



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureCreateInfoNV" #-} VkAccelerationStructureCreateInfoNV =
       VkAccelerationStructureCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , compactedSize :: VkDeviceSize
         , info :: VkAccelerationStructureInfoNV
         }

instance Storable VkAccelerationStructureCreateInfoNV where
  sizeOf    _ = #{size      VkAccelerationStructureCreateInfoNV}
  alignment _ = #{alignment VkAccelerationStructureCreateInfoNV}

  peek ptr = 
    VkAccelerationStructureCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"compactedSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"info" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"compactedSize" ptr val
    pokeField @"info" ptr val

instance Offset "sType" VkAccelerationStructureCreateInfoNV where
  rawOffset = #{offset VkAccelerationStructureCreateInfoNV, sType}

instance Offset "pNext" VkAccelerationStructureCreateInfoNV where
  rawOffset = #{offset VkAccelerationStructureCreateInfoNV, pNext}

instance Offset "compactedSize" VkAccelerationStructureCreateInfoNV where
  rawOffset = #{offset VkAccelerationStructureCreateInfoNV, compactedSize}

instance Offset "info" VkAccelerationStructureCreateInfoNV where
  rawOffset = #{offset VkAccelerationStructureCreateInfoNV, info}

#else

module Vulkan.Types.Struct.VkAccelerationStructureCreateInfoNV where

#endif