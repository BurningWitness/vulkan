{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Types.Struct.VkQueryPoolPerformanceCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkQueryPoolPerformanceCreateInfoKHR" #-} VkQueryPoolPerformanceCreateInfoKHR =
       VkQueryPoolPerformanceCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , queueFamilyIndex :: #{type uint32_t}
         , counterIndexCount :: #{type uint32_t}
         , pCounterIndices :: Ptr #{type uint32_t}
         }

instance Storable VkQueryPoolPerformanceCreateInfoKHR where
  sizeOf    _ = #{size      VkQueryPoolPerformanceCreateInfoKHR}
  alignment _ = #{alignment VkQueryPoolPerformanceCreateInfoKHR}

  peek ptr = 
    VkQueryPoolPerformanceCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"queueFamilyIndex" ptr)
       <*> peek (offset @"counterIndexCount" ptr)
       <*> peek (offset @"pCounterIndices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"queueFamilyIndex" ptr val
    pokeField @"counterIndexCount" ptr val
    pokeField @"pCounterIndices" ptr val

instance Offset "sType" VkQueryPoolPerformanceCreateInfoKHR where
  rawOffset = #{offset VkQueryPoolPerformanceCreateInfoKHR, sType}

instance Offset "pNext" VkQueryPoolPerformanceCreateInfoKHR where
  rawOffset = #{offset VkQueryPoolPerformanceCreateInfoKHR, pNext}

instance Offset "queueFamilyIndex" VkQueryPoolPerformanceCreateInfoKHR where
  rawOffset = #{offset VkQueryPoolPerformanceCreateInfoKHR, queueFamilyIndex}

instance Offset "counterIndexCount" VkQueryPoolPerformanceCreateInfoKHR where
  rawOffset = #{offset VkQueryPoolPerformanceCreateInfoKHR, counterIndexCount}

instance Offset "pCounterIndices" VkQueryPoolPerformanceCreateInfoKHR where
  rawOffset = #{offset VkQueryPoolPerformanceCreateInfoKHR, pCounterIndices}

#else

module Vulkan.Types.Struct.VkQueryPoolPerformanceCreateInfoKHR where

#endif