{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Types.Struct.VkPerformanceCounterKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPerformanceCounterScopeKHR
import Vulkan.Types.Enum.VkPerformanceCounterStorageKHR
import Vulkan.Types.Enum.VkPerformanceCounterUnitKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPerformanceCounterKHR" #-} VkPerformanceCounterKHR =
       VkPerformanceCounterKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , unit :: VkPerformanceCounterUnitKHR
         , scope :: VkPerformanceCounterScopeKHR
         , storage :: VkPerformanceCounterStorageKHR
         , uuid :: #{type uint8_t}
         }

instance Storable VkPerformanceCounterKHR where
  sizeOf    _ = #{size      struct VkPerformanceCounterKHR}
  alignment _ = #{alignment struct VkPerformanceCounterKHR}

  peek ptr = 
    VkPerformanceCounterKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"unit" ptr)
       <*> peek (offset @"scope" ptr)
       <*> peek (offset @"storage" ptr)
       <*> peek (offset @"uuid" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"unit" ptr val
    pokeField @"scope" ptr val
    pokeField @"storage" ptr val
    pokeField @"uuid" ptr val

instance Offset "sType" VkPerformanceCounterKHR where
  rawOffset = #{offset struct VkPerformanceCounterKHR, sType}

instance Offset "pNext" VkPerformanceCounterKHR where
  rawOffset = #{offset struct VkPerformanceCounterKHR, pNext}

instance Offset "unit" VkPerformanceCounterKHR where
  rawOffset = #{offset struct VkPerformanceCounterKHR, unit}

instance Offset "scope" VkPerformanceCounterKHR where
  rawOffset = #{offset struct VkPerformanceCounterKHR, scope}

instance Offset "storage" VkPerformanceCounterKHR where
  rawOffset = #{offset struct VkPerformanceCounterKHR, storage}

instance Offset "uuid" VkPerformanceCounterKHR where
  rawOffset = #{offset struct VkPerformanceCounterKHR, uuid}

#else

module Vulkan.Types.Struct.VkPerformanceCounterKHR where

#endif