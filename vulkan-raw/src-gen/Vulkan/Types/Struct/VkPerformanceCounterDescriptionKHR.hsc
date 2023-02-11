{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Types.Struct.VkPerformanceCounterDescriptionKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPerformanceCounterDescriptionFlagsKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPerformanceCounterDescriptionKHR" #-} VkPerformanceCounterDescriptionKHR =
       VkPerformanceCounterDescriptionKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPerformanceCounterDescriptionFlagsKHR
         , name :: #{type char}
         , category :: #{type char}
         , description :: #{type char}
         }

instance Storable VkPerformanceCounterDescriptionKHR where
  sizeOf    _ = #{size      struct VkPerformanceCounterDescriptionKHR}
  alignment _ = #{alignment struct VkPerformanceCounterDescriptionKHR}

  peek ptr = 
    VkPerformanceCounterDescriptionKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"name" ptr)
       <*> peek (offset @"category" ptr)
       <*> peek (offset @"description" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"name" ptr val
    pokeField @"category" ptr val
    pokeField @"description" ptr val

instance Offset "sType" VkPerformanceCounterDescriptionKHR where
  rawOffset = #{offset struct VkPerformanceCounterDescriptionKHR, sType}

instance Offset "pNext" VkPerformanceCounterDescriptionKHR where
  rawOffset = #{offset struct VkPerformanceCounterDescriptionKHR, pNext}

instance Offset "flags" VkPerformanceCounterDescriptionKHR where
  rawOffset = #{offset struct VkPerformanceCounterDescriptionKHR, flags}

instance Offset "name" VkPerformanceCounterDescriptionKHR where
  rawOffset = #{offset struct VkPerformanceCounterDescriptionKHR, name}

instance Offset "category" VkPerformanceCounterDescriptionKHR where
  rawOffset = #{offset struct VkPerformanceCounterDescriptionKHR, category}

instance Offset "description" VkPerformanceCounterDescriptionKHR where
  rawOffset = #{offset struct VkPerformanceCounterDescriptionKHR, description}

#else

module Vulkan.Types.Struct.VkPerformanceCounterDescriptionKHR where

#endif