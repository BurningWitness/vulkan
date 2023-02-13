{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Struct.VkGeometryNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkGeometryFlagsKHR
import Vulkan.Types.Enum.VkGeometryTypeKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkGeometryDataNV



data {-# CTYPE "vulkan/vulkan.h" "VkGeometryNV" #-} VkGeometryNV =
       VkGeometryNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , geometryType :: VkGeometryTypeKHR
         , geometry :: VkGeometryDataNV
         , flags :: VkGeometryFlagsKHR
         }

instance Storable VkGeometryNV where
  sizeOf    _ = #{size      VkGeometryNV}
  alignment _ = #{alignment VkGeometryNV}

  peek ptr = 
    VkGeometryNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"geometryType" ptr)
       <*> peek (offset @"geometry" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"geometryType" ptr val
    pokeField @"geometry" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkGeometryNV where
  rawOffset = #{offset VkGeometryNV, sType}

instance Offset "pNext" VkGeometryNV where
  rawOffset = #{offset VkGeometryNV, pNext}

instance Offset "geometryType" VkGeometryNV where
  rawOffset = #{offset VkGeometryNV, geometryType}

instance Offset "geometry" VkGeometryNV where
  rawOffset = #{offset VkGeometryNV, geometry}

instance Offset "flags" VkGeometryNV where
  rawOffset = #{offset VkGeometryNV, flags}

#else

module Vulkan.Types.Struct.VkGeometryNV where

#endif