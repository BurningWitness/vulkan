{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Union.VkPerformanceValueDataINTEL where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkPerformanceValueDataINTEL" #-} VkPerformanceValueDataINTEL =
       VkPerformanceValueDataINTEL
         { value32 :: #{type uint32_t}
         , value64 :: #{type uint64_t}
         , valueFloat :: #{type float}
         , valueBool :: VkBool32
         , valueString :: Ptr #{type char}
         }

instance Storable VkPerformanceValueDataINTEL where
  sizeOf    _ = #{size      union VkPerformanceValueDataINTEL}
  alignment _ = #{alignment union VkPerformanceValueDataINTEL}

  peek ptr = 
    VkPerformanceValueDataINTEL
       <$> peek (offset @"value32" ptr)
       <*> peek (offset @"value64" ptr)
       <*> peek (offset @"valueFloat" ptr)
       <*> peek (offset @"valueBool" ptr)
       <*> peek (offset @"valueString" ptr)

  poke ptr val = do
    pokeField @"value32" ptr val
    pokeField @"value64" ptr val
    pokeField @"valueFloat" ptr val
    pokeField @"valueBool" ptr val
    pokeField @"valueString" ptr val

instance Offset "value32" VkPerformanceValueDataINTEL where
  rawOffset = #{offset union VkPerformanceValueDataINTEL, value32}

instance Offset "value64" VkPerformanceValueDataINTEL where
  rawOffset = #{offset union VkPerformanceValueDataINTEL, value64}

instance Offset "valueFloat" VkPerformanceValueDataINTEL where
  rawOffset = #{offset union VkPerformanceValueDataINTEL, valueFloat}

instance Offset "valueBool" VkPerformanceValueDataINTEL where
  rawOffset = #{offset union VkPerformanceValueDataINTEL, valueBool}

instance Offset "valueString" VkPerformanceValueDataINTEL where
  rawOffset = #{offset union VkPerformanceValueDataINTEL, valueString}

#else

module Vulkan.Types.Union.VkPerformanceValueDataINTEL where

#endif