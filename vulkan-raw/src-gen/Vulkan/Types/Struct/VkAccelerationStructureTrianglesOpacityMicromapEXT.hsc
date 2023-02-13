{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Struct.VkAccelerationStructureTrianglesOpacityMicromapEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkIndexType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMicromapUsageEXT
import Vulkan.Types.Union.VkDeviceOrHostAddressConstKHR



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureTrianglesOpacityMicromapEXT" #-} VkAccelerationStructureTrianglesOpacityMicromapEXT =
       VkAccelerationStructureTrianglesOpacityMicromapEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , indexType :: VkIndexType
         , indexBuffer :: VkDeviceOrHostAddressConstKHR
         , indexStride :: VkDeviceSize
         , baseTriangle :: #{type uint32_t}
         , usageCountsCount :: #{type uint32_t}
         , pUsageCounts :: Ptr VkMicromapUsageEXT
         , ppUsageCounts :: Ptr (Ptr VkMicromapUsageEXT)
         , micromap :: VkMicromapEXT
         }

instance Storable VkAccelerationStructureTrianglesOpacityMicromapEXT where
  sizeOf    _ = #{size      VkAccelerationStructureTrianglesOpacityMicromapEXT}
  alignment _ = #{alignment VkAccelerationStructureTrianglesOpacityMicromapEXT}

  peek ptr = 
    VkAccelerationStructureTrianglesOpacityMicromapEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"indexType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"indexBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"indexStride" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"baseTriangle" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"usageCountsCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pUsageCounts" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ppUsageCounts" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"micromap" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"indexType" ptr val
    pokeField @"indexBuffer" ptr val
    pokeField @"indexStride" ptr val
    pokeField @"baseTriangle" ptr val
    pokeField @"usageCountsCount" ptr val
    pokeField @"pUsageCounts" ptr val
    pokeField @"ppUsageCounts" ptr val
    pokeField @"micromap" ptr val

instance Offset "sType" VkAccelerationStructureTrianglesOpacityMicromapEXT where
  rawOffset = #{offset VkAccelerationStructureTrianglesOpacityMicromapEXT, sType}

instance Offset "pNext" VkAccelerationStructureTrianglesOpacityMicromapEXT where
  rawOffset = #{offset VkAccelerationStructureTrianglesOpacityMicromapEXT, pNext}

instance Offset "indexType" VkAccelerationStructureTrianglesOpacityMicromapEXT where
  rawOffset = #{offset VkAccelerationStructureTrianglesOpacityMicromapEXT, indexType}

instance Offset "indexBuffer" VkAccelerationStructureTrianglesOpacityMicromapEXT where
  rawOffset = #{offset VkAccelerationStructureTrianglesOpacityMicromapEXT, indexBuffer}

instance Offset "indexStride" VkAccelerationStructureTrianglesOpacityMicromapEXT where
  rawOffset = #{offset VkAccelerationStructureTrianglesOpacityMicromapEXT, indexStride}

instance Offset "baseTriangle" VkAccelerationStructureTrianglesOpacityMicromapEXT where
  rawOffset = #{offset VkAccelerationStructureTrianglesOpacityMicromapEXT, baseTriangle}

instance Offset "usageCountsCount" VkAccelerationStructureTrianglesOpacityMicromapEXT where
  rawOffset = #{offset VkAccelerationStructureTrianglesOpacityMicromapEXT, usageCountsCount}

instance Offset "pUsageCounts" VkAccelerationStructureTrianglesOpacityMicromapEXT where
  rawOffset = #{offset VkAccelerationStructureTrianglesOpacityMicromapEXT, pUsageCounts}

instance Offset "ppUsageCounts" VkAccelerationStructureTrianglesOpacityMicromapEXT where
  rawOffset = #{offset VkAccelerationStructureTrianglesOpacityMicromapEXT, ppUsageCounts}

instance Offset "micromap" VkAccelerationStructureTrianglesOpacityMicromapEXT where
  rawOffset = #{offset VkAccelerationStructureTrianglesOpacityMicromapEXT, micromap}

#else

module Vulkan.Types.Struct.VkAccelerationStructureTrianglesOpacityMicromapEXT where

#endif