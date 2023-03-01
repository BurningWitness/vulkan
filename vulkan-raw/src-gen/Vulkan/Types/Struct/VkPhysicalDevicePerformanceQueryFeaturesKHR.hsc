{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPhysicalDevicePerformanceQueryFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDevicePerformanceQueryFeaturesKHR}

  peek ptr = 
    VkPhysicalDevicePerformanceQueryFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"performanceCounterQueryPools" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"performanceCounterMultipleQueryPools" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"performanceCounterQueryPools" ptr val
    pokeField @"performanceCounterMultipleQueryPools" ptr val

instance Offset "sType" VkPhysicalDevicePerformanceQueryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevicePerformanceQueryFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDevicePerformanceQueryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevicePerformanceQueryFeaturesKHR, pNext}

instance Offset "performanceCounterQueryPools" VkPhysicalDevicePerformanceQueryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevicePerformanceQueryFeaturesKHR, performanceCounterQueryPools}

instance Offset "performanceCounterMultipleQueryPools" VkPhysicalDevicePerformanceQueryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevicePerformanceQueryFeaturesKHR, performanceCounterMultipleQueryPools}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePerformanceQueryFeaturesKHR where

#endif