{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Struct.VkPerformanceValueINTEL where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkPerformanceValueTypeINTEL
import Vulkan.Types.Union.VkPerformanceValueDataINTEL



data {-# CTYPE "vulkan/vulkan.h" "VkPerformanceValueINTEL" #-} VkPerformanceValueINTEL =
       VkPerformanceValueINTEL
         { type_ :: VkPerformanceValueTypeINTEL
         , data_ :: VkPerformanceValueDataINTEL
         }

instance Storable VkPerformanceValueINTEL where
  sizeOf    _ = #{size      VkPerformanceValueINTEL}
  alignment _ = #{alignment VkPerformanceValueINTEL}

  peek ptr = 
    VkPerformanceValueINTEL
       <$> peek (offset @"type" ptr)
       <*> peek (offset @"data" ptr)

  poke ptr val = do
    pokeField @"type" ptr val
    pokeField @"data" ptr val

instance Offset "type_" VkPerformanceValueINTEL where
  rawOffset = #{offset VkPerformanceValueINTEL, type}

instance Offset "data_" VkPerformanceValueINTEL where
  rawOffset = #{offset VkPerformanceValueINTEL, data}

instance Offset "type" VkPerformanceValueINTEL where
  rawOffset = rawOffset @"type_" @VkPerformanceValueINTEL

instance Offset "data" VkPerformanceValueINTEL where
  rawOffset = rawOffset @"data_" @VkPerformanceValueINTEL

instance HasField "type" VkPerformanceValueINTEL VkPerformanceValueTypeINTEL where
  getField = getField @"type_" @VkPerformanceValueINTEL

instance HasField "data" VkPerformanceValueINTEL VkPerformanceValueDataINTEL where
  getField = getField @"data_" @VkPerformanceValueINTEL

#else

module Vulkan.Types.Struct.VkPerformanceValueINTEL where

#endif