{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Struct.VkPerformanceConfigurationAcquireInfoINTEL where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkPerformanceConfigurationTypeINTEL
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPerformanceConfigurationAcquireInfoINTEL" #-} VkPerformanceConfigurationAcquireInfoINTEL =
       VkPerformanceConfigurationAcquireInfoINTEL
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , type_ :: VkPerformanceConfigurationTypeINTEL
         }

instance Storable VkPerformanceConfigurationAcquireInfoINTEL where
  sizeOf    _ = #{size      VkPerformanceConfigurationAcquireInfoINTEL}
  alignment _ = #{alignment VkPerformanceConfigurationAcquireInfoINTEL}

  peek ptr = 
    VkPerformanceConfigurationAcquireInfoINTEL
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"type" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"type" ptr val

instance Offset "sType" VkPerformanceConfigurationAcquireInfoINTEL where
  rawOffset = #{offset VkPerformanceConfigurationAcquireInfoINTEL, sType}

instance Offset "pNext" VkPerformanceConfigurationAcquireInfoINTEL where
  rawOffset = #{offset VkPerformanceConfigurationAcquireInfoINTEL, pNext}

instance Offset "type_" VkPerformanceConfigurationAcquireInfoINTEL where
  rawOffset = #{offset VkPerformanceConfigurationAcquireInfoINTEL, type}

instance Offset "type" VkPerformanceConfigurationAcquireInfoINTEL where
  rawOffset = rawOffset @"type_" @VkPerformanceConfigurationAcquireInfoINTEL

instance HasField "type" VkPerformanceConfigurationAcquireInfoINTEL VkPerformanceConfigurationTypeINTEL where
  getField = getField @"type_" @VkPerformanceConfigurationAcquireInfoINTEL

#else

module Vulkan.Types.Struct.VkPerformanceConfigurationAcquireInfoINTEL where

#endif