{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkAabbPositionsKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkAabbPositionsKHR" #-} VkAabbPositionsKHR =
       VkAabbPositionsKHR
         { minX :: #{type float}
         , minY :: #{type float}
         , minZ :: #{type float}
         , maxX :: #{type float}
         , maxY :: #{type float}
         , maxZ :: #{type float}
         }

instance Storable VkAabbPositionsKHR where
  sizeOf    _ = #{size      VkAabbPositionsKHR}
  alignment _ = #{alignment VkAabbPositionsKHR}

  peek ptr = 
    VkAabbPositionsKHR
       <$> peek (Foreign.Storable.Offset.offset @"minX" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minY" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minZ" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxX" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxY" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxZ" ptr)

  poke ptr val = do
    pokeField @"minX" ptr val
    pokeField @"minY" ptr val
    pokeField @"minZ" ptr val
    pokeField @"maxX" ptr val
    pokeField @"maxY" ptr val
    pokeField @"maxZ" ptr val

instance Offset "minX" VkAabbPositionsKHR where
  rawOffset = #{offset VkAabbPositionsKHR, minX}

instance Offset "minY" VkAabbPositionsKHR where
  rawOffset = #{offset VkAabbPositionsKHR, minY}

instance Offset "minZ" VkAabbPositionsKHR where
  rawOffset = #{offset VkAabbPositionsKHR, minZ}

instance Offset "maxX" VkAabbPositionsKHR where
  rawOffset = #{offset VkAabbPositionsKHR, maxX}

instance Offset "maxY" VkAabbPositionsKHR where
  rawOffset = #{offset VkAabbPositionsKHR, maxY}

instance Offset "maxZ" VkAabbPositionsKHR where
  rawOffset = #{offset VkAabbPositionsKHR, maxZ}

#else

module Vulkan.Types.Struct.VkAabbPositionsKHR where

#endif