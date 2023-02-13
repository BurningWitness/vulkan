{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Struct.VkPerformanceMarkerInfoINTEL where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPerformanceMarkerInfoINTEL" #-} VkPerformanceMarkerInfoINTEL =
       VkPerformanceMarkerInfoINTEL
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , marker :: #{type uint64_t}
         }

instance Storable VkPerformanceMarkerInfoINTEL where
  sizeOf    _ = #{size      VkPerformanceMarkerInfoINTEL}
  alignment _ = #{alignment VkPerformanceMarkerInfoINTEL}

  peek ptr = 
    VkPerformanceMarkerInfoINTEL
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"marker" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"marker" ptr val

instance Offset "sType" VkPerformanceMarkerInfoINTEL where
  rawOffset = #{offset VkPerformanceMarkerInfoINTEL, sType}

instance Offset "pNext" VkPerformanceMarkerInfoINTEL where
  rawOffset = #{offset VkPerformanceMarkerInfoINTEL, pNext}

instance Offset "marker" VkPerformanceMarkerInfoINTEL where
  rawOffset = #{offset VkPerformanceMarkerInfoINTEL, marker}

#else

module Vulkan.Types.Struct.VkPerformanceMarkerInfoINTEL where

#endif