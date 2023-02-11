{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Types.Struct.VkPhysicalDevicePerformanceQueryFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePerformanceQueryFeaturesKHR" #-} VkPhysicalDevicePerformanceQueryFeaturesKHR =
       VkPhysicalDevicePerformanceQueryFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , performanceCounterQueryPools :: VkBool32 -- ^ performance counters supported in query pools
         , performanceCounterMultipleQueryPools :: VkBool32 -- ^ performance counters from multiple query pools can be accessed in the same primary command buffer
         }

instance Storable VkPhysicalDevicePerformanceQueryFeaturesKHR where
  sizeOf    _ = #{size      struct VkPhysicalDevicePerformanceQueryFeaturesKHR}
  alignment _ = #{alignment struct VkPhysicalDevicePerformanceQueryFeaturesKHR}

  peek ptr = 
    VkPhysicalDevicePerformanceQueryFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"performanceCounterQueryPools" ptr)
       <*> peek (offset @"performanceCounterMultipleQueryPools" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"performanceCounterQueryPools" ptr val
    pokeField @"performanceCounterMultipleQueryPools" ptr val

instance Offset "sType" VkPhysicalDevicePerformanceQueryFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePerformanceQueryFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDevicePerformanceQueryFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePerformanceQueryFeaturesKHR, pNext}

instance Offset "performanceCounterQueryPools" VkPhysicalDevicePerformanceQueryFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePerformanceQueryFeaturesKHR, performanceCounterQueryPools}

instance Offset "performanceCounterMultipleQueryPools" VkPhysicalDevicePerformanceQueryFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePerformanceQueryFeaturesKHR, performanceCounterMultipleQueryPools}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePerformanceQueryFeaturesKHR where

#endif