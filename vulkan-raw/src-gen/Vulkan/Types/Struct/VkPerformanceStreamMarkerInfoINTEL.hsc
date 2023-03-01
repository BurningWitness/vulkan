{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Struct.VkPerformanceStreamMarkerInfoINTEL where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPerformanceStreamMarkerInfoINTEL" #-} VkPerformanceStreamMarkerInfoINTEL =
       VkPerformanceStreamMarkerInfoINTEL
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , marker :: #{type uint32_t}
         }

instance Storable VkPerformanceStreamMarkerInfoINTEL where
  sizeOf    _ = #{size      VkPerformanceStreamMarkerInfoINTEL}
  alignment _ = #{alignment VkPerformanceStreamMarkerInfoINTEL}

  peek ptr = 
    VkPerformanceStreamMarkerInfoINTEL
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"marker" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"marker" ptr val

instance Offset "sType" VkPerformanceStreamMarkerInfoINTEL where
  rawOffset = #{offset VkPerformanceStreamMarkerInfoINTEL, sType}

instance Offset "pNext" VkPerformanceStreamMarkerInfoINTEL where
  rawOffset = #{offset VkPerformanceStreamMarkerInfoINTEL, pNext}

instance Offset "marker" VkPerformanceStreamMarkerInfoINTEL where
  rawOffset = #{offset VkPerformanceStreamMarkerInfoINTEL, marker}

#else

module Vulkan.Types.Struct.VkPerformanceStreamMarkerInfoINTEL where

#endif