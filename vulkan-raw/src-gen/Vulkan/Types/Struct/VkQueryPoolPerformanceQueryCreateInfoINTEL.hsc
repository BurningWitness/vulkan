{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Struct.VkQueryPoolPerformanceQueryCreateInfoINTEL where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkQueryPoolSamplingModeINTEL
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkQueryPoolPerformanceQueryCreateInfoINTEL" #-} VkQueryPoolPerformanceQueryCreateInfoINTEL =
       VkQueryPoolPerformanceQueryCreateInfoINTEL
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , performanceCountersSampling :: VkQueryPoolSamplingModeINTEL
         }

instance Storable VkQueryPoolPerformanceQueryCreateInfoINTEL where
  sizeOf    _ = #{size      VkQueryPoolPerformanceQueryCreateInfoINTEL}
  alignment _ = #{alignment VkQueryPoolPerformanceQueryCreateInfoINTEL}

  peek ptr = 
    VkQueryPoolPerformanceQueryCreateInfoINTEL
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"performanceCountersSampling" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"performanceCountersSampling" ptr val

instance Offset "sType" VkQueryPoolPerformanceQueryCreateInfoINTEL where
  rawOffset = #{offset VkQueryPoolPerformanceQueryCreateInfoINTEL, sType}

instance Offset "pNext" VkQueryPoolPerformanceQueryCreateInfoINTEL where
  rawOffset = #{offset VkQueryPoolPerformanceQueryCreateInfoINTEL, pNext}

instance Offset "performanceCountersSampling" VkQueryPoolPerformanceQueryCreateInfoINTEL where
  rawOffset = #{offset VkQueryPoolPerformanceQueryCreateInfoINTEL, performanceCountersSampling}

#else

module Vulkan.Types.Struct.VkQueryPoolPerformanceQueryCreateInfoINTEL where

#endif