{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Struct.VkQueryPoolCreateInfoINTEL where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkQueryPoolSamplingModeINTEL
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkQueryPoolCreateInfoINTEL" #-} VkQueryPoolCreateInfoINTEL =
       VkQueryPoolCreateInfoINTEL
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , performanceCountersSampling :: VkQueryPoolSamplingModeINTEL
         }

instance Storable VkQueryPoolCreateInfoINTEL where
  sizeOf    _ = #{size      VkQueryPoolCreateInfoINTEL}
  alignment _ = #{alignment VkQueryPoolCreateInfoINTEL}

  peek ptr = 
    VkQueryPoolCreateInfoINTEL
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"performanceCountersSampling" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"performanceCountersSampling" ptr val

instance Offset "sType" VkQueryPoolCreateInfoINTEL where
  rawOffset = #{offset VkQueryPoolCreateInfoINTEL, sType}

instance Offset "pNext" VkQueryPoolCreateInfoINTEL where
  rawOffset = #{offset VkQueryPoolCreateInfoINTEL, pNext}

instance Offset "performanceCountersSampling" VkQueryPoolCreateInfoINTEL where
  rawOffset = #{offset VkQueryPoolCreateInfoINTEL, performanceCountersSampling}

#else

module Vulkan.Types.Struct.VkQueryPoolCreateInfoINTEL where

#endif