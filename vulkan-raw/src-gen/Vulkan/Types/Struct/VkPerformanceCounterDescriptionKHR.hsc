{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPerformanceCounterDescriptionKHR}
  alignment _ = #{alignment VkPerformanceCounterDescriptionKHR}

  peek ptr = 
    VkPerformanceCounterDescriptionKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"name" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"category" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"description" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"name" ptr val
    pokeField @"category" ptr val
    pokeField @"description" ptr val

instance Offset "sType" VkPerformanceCounterDescriptionKHR where
  rawOffset = #{offset VkPerformanceCounterDescriptionKHR, sType}

instance Offset "pNext" VkPerformanceCounterDescriptionKHR where
  rawOffset = #{offset VkPerformanceCounterDescriptionKHR, pNext}

instance Offset "flags" VkPerformanceCounterDescriptionKHR where
  rawOffset = #{offset VkPerformanceCounterDescriptionKHR, flags}

instance Offset "name" VkPerformanceCounterDescriptionKHR where
  rawOffset = #{offset VkPerformanceCounterDescriptionKHR, name}

instance Offset "category" VkPerformanceCounterDescriptionKHR where
  rawOffset = #{offset VkPerformanceCounterDescriptionKHR, category}

instance Offset "description" VkPerformanceCounterDescriptionKHR where
  rawOffset = #{offset VkPerformanceCounterDescriptionKHR, description}

#else

module Vulkan.Types.Struct.VkPerformanceCounterDescriptionKHR where

#endif