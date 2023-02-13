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
  sizeOf    _ = #{size      VkPerformanceValueDataINTEL}
  alignment _ = #{alignment VkPerformanceValueDataINTEL}

  peek ptr = 
    VkPerformanceValueDataINTEL
       <$> peek (Foreign.Storable.Offset.offset @"value32" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"value64" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"valueFloat" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"valueBool" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"valueString" ptr)

  poke ptr val = do
    pokeField @"value32" ptr val
    pokeField @"value64" ptr val
    pokeField @"valueFloat" ptr val
    pokeField @"valueBool" ptr val
    pokeField @"valueString" ptr val

instance Offset "value32" VkPerformanceValueDataINTEL where
  rawOffset = #{offset VkPerformanceValueDataINTEL, value32}

instance Offset "value64" VkPerformanceValueDataINTEL where
  rawOffset = #{offset VkPerformanceValueDataINTEL, value64}

instance Offset "valueFloat" VkPerformanceValueDataINTEL where
  rawOffset = #{offset VkPerformanceValueDataINTEL, valueFloat}

instance Offset "valueBool" VkPerformanceValueDataINTEL where
  rawOffset = #{offset VkPerformanceValueDataINTEL, valueBool}

instance Offset "valueString" VkPerformanceValueDataINTEL where
  rawOffset = #{offset VkPerformanceValueDataINTEL, valueString}

#else

module Vulkan.Types.Union.VkPerformanceValueDataINTEL where

#endif