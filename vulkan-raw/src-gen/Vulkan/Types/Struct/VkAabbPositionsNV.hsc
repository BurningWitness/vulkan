{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Struct.VkAabbPositionsNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkAabbPositionsNV" #-} VkAabbPositionsNV =
       VkAabbPositionsNV
         { minX :: #{type float}
         , minY :: #{type float}
         , minZ :: #{type float}
         , maxX :: #{type float}
         , maxY :: #{type float}
         , maxZ :: #{type float}
         }

instance Storable VkAabbPositionsNV where
  sizeOf    _ = #{size      VkAabbPositionsNV}
  alignment _ = #{alignment VkAabbPositionsNV}

  peek ptr = 
    VkAabbPositionsNV
       <$> peek (offset @"minX" ptr)
       <*> peek (offset @"minY" ptr)
       <*> peek (offset @"minZ" ptr)
       <*> peek (offset @"maxX" ptr)
       <*> peek (offset @"maxY" ptr)
       <*> peek (offset @"maxZ" ptr)

  poke ptr val = do
    pokeField @"minX" ptr val
    pokeField @"minY" ptr val
    pokeField @"minZ" ptr val
    pokeField @"maxX" ptr val
    pokeField @"maxY" ptr val
    pokeField @"maxZ" ptr val

instance Offset "minX" VkAabbPositionsNV where
  rawOffset = #{offset VkAabbPositionsNV, minX}

instance Offset "minY" VkAabbPositionsNV where
  rawOffset = #{offset VkAabbPositionsNV, minY}

instance Offset "minZ" VkAabbPositionsNV where
  rawOffset = #{offset VkAabbPositionsNV, minZ}

instance Offset "maxX" VkAabbPositionsNV where
  rawOffset = #{offset VkAabbPositionsNV, maxX}

instance Offset "maxY" VkAabbPositionsNV where
  rawOffset = #{offset VkAabbPositionsNV, maxY}

instance Offset "maxZ" VkAabbPositionsNV where
  rawOffset = #{offset VkAabbPositionsNV, maxZ}

#else

module Vulkan.Types.Struct.VkAabbPositionsNV where

#endif