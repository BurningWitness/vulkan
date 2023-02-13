{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Types.Struct.VkPerformanceQuerySubmitInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPerformanceQuerySubmitInfoKHR" #-} VkPerformanceQuerySubmitInfoKHR =
       VkPerformanceQuerySubmitInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , counterPassIndex :: #{type uint32_t} -- ^ Index for which counter pass to submit
         }

instance Storable VkPerformanceQuerySubmitInfoKHR where
  sizeOf    _ = #{size      VkPerformanceQuerySubmitInfoKHR}
  alignment _ = #{alignment VkPerformanceQuerySubmitInfoKHR}

  peek ptr = 
    VkPerformanceQuerySubmitInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"counterPassIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"counterPassIndex" ptr val

instance Offset "sType" VkPerformanceQuerySubmitInfoKHR where
  rawOffset = #{offset VkPerformanceQuerySubmitInfoKHR, sType}

instance Offset "pNext" VkPerformanceQuerySubmitInfoKHR where
  rawOffset = #{offset VkPerformanceQuerySubmitInfoKHR, pNext}

instance Offset "counterPassIndex" VkPerformanceQuerySubmitInfoKHR where
  rawOffset = #{offset VkPerformanceQuerySubmitInfoKHR, counterPassIndex}

#else

module Vulkan.Types.Struct.VkPerformanceQuerySubmitInfoKHR where

#endif