{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkAabbPositionsKHR}
  alignment _ = #{alignment struct VkAabbPositionsKHR}

  peek ptr = 
    VkAabbPositionsKHR
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

instance Offset "minX" VkAabbPositionsKHR where
  rawOffset = #{offset struct VkAabbPositionsKHR, minX}

instance Offset "minY" VkAabbPositionsKHR where
  rawOffset = #{offset struct VkAabbPositionsKHR, minY}

instance Offset "minZ" VkAabbPositionsKHR where
  rawOffset = #{offset struct VkAabbPositionsKHR, minZ}

instance Offset "maxX" VkAabbPositionsKHR where
  rawOffset = #{offset struct VkAabbPositionsKHR, maxX}

instance Offset "maxY" VkAabbPositionsKHR where
  rawOffset = #{offset struct VkAabbPositionsKHR, maxY}

instance Offset "maxZ" VkAabbPositionsKHR where
  rawOffset = #{offset struct VkAabbPositionsKHR, maxZ}

#else

module Vulkan.Types.Struct.VkAabbPositionsKHR where

#endif