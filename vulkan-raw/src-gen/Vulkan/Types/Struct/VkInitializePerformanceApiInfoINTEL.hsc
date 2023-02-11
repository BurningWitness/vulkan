{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Struct.VkInitializePerformanceApiInfoINTEL where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkInitializePerformanceApiInfoINTEL" #-} VkInitializePerformanceApiInfoINTEL =
       VkInitializePerformanceApiInfoINTEL
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pUserData :: Ptr ()
         }

instance Storable VkInitializePerformanceApiInfoINTEL where
  sizeOf    _ = #{size      struct VkInitializePerformanceApiInfoINTEL}
  alignment _ = #{alignment struct VkInitializePerformanceApiInfoINTEL}

  peek ptr = 
    VkInitializePerformanceApiInfoINTEL
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pUserData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pUserData" ptr val

instance Offset "sType" VkInitializePerformanceApiInfoINTEL where
  rawOffset = #{offset struct VkInitializePerformanceApiInfoINTEL, sType}

instance Offset "pNext" VkInitializePerformanceApiInfoINTEL where
  rawOffset = #{offset struct VkInitializePerformanceApiInfoINTEL, pNext}

instance Offset "pUserData" VkInitializePerformanceApiInfoINTEL where
  rawOffset = #{offset struct VkInitializePerformanceApiInfoINTEL, pUserData}

#else

module Vulkan.Types.Struct.VkInitializePerformanceApiInfoINTEL where

#endif