{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Types.Union.VkPerformanceCounterResultKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkPerformanceCounterResultKHR" #-} VkPerformanceCounterResultKHR =
       VkPerformanceCounterResultKHR
         { int32 :: #{type int32_t}
         , int64 :: #{type int64_t}
         , uint32 :: #{type uint32_t}
         , uint64 :: #{type uint64_t}
         , float32 :: #{type float}
         , float64 :: #{type double}
         }

instance Storable VkPerformanceCounterResultKHR where
  sizeOf    _ = #{size      union VkPerformanceCounterResultKHR}
  alignment _ = #{alignment union VkPerformanceCounterResultKHR}

  peek ptr = 
    VkPerformanceCounterResultKHR
       <$> peek (offset @"int32" ptr)
       <*> peek (offset @"int64" ptr)
       <*> peek (offset @"uint32" ptr)
       <*> peek (offset @"uint64" ptr)
       <*> peek (offset @"float32" ptr)
       <*> peek (offset @"float64" ptr)

  poke ptr val = do
    pokeField @"int32" ptr val
    pokeField @"int64" ptr val
    pokeField @"uint32" ptr val
    pokeField @"uint64" ptr val
    pokeField @"float32" ptr val
    pokeField @"float64" ptr val

instance Offset "int32" VkPerformanceCounterResultKHR where
  rawOffset = #{offset union VkPerformanceCounterResultKHR, int32}

instance Offset "int64" VkPerformanceCounterResultKHR where
  rawOffset = #{offset union VkPerformanceCounterResultKHR, int64}

instance Offset "uint32" VkPerformanceCounterResultKHR where
  rawOffset = #{offset union VkPerformanceCounterResultKHR, uint32}

instance Offset "uint64" VkPerformanceCounterResultKHR where
  rawOffset = #{offset union VkPerformanceCounterResultKHR, uint64}

instance Offset "float32" VkPerformanceCounterResultKHR where
  rawOffset = #{offset union VkPerformanceCounterResultKHR, float32}

instance Offset "float64" VkPerformanceCounterResultKHR where
  rawOffset = #{offset union VkPerformanceCounterResultKHR, float64}

#else

module Vulkan.Types.Union.VkPerformanceCounterResultKHR where

#endif