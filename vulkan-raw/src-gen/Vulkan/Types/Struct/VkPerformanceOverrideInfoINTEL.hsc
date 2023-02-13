{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Struct.VkPerformanceOverrideInfoINTEL where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkPerformanceOverrideTypeINTEL
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPerformanceOverrideInfoINTEL" #-} VkPerformanceOverrideInfoINTEL =
       VkPerformanceOverrideInfoINTEL
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , type_ :: VkPerformanceOverrideTypeINTEL
         , enable :: VkBool32
         , parameter :: #{type uint64_t}
         }

instance Storable VkPerformanceOverrideInfoINTEL where
  sizeOf    _ = #{size      VkPerformanceOverrideInfoINTEL}
  alignment _ = #{alignment VkPerformanceOverrideInfoINTEL}

  peek ptr = 
    VkPerformanceOverrideInfoINTEL
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"type" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"enable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"parameter" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"type" ptr val
    pokeField @"enable" ptr val
    pokeField @"parameter" ptr val

instance Offset "sType" VkPerformanceOverrideInfoINTEL where
  rawOffset = #{offset VkPerformanceOverrideInfoINTEL, sType}

instance Offset "pNext" VkPerformanceOverrideInfoINTEL where
  rawOffset = #{offset VkPerformanceOverrideInfoINTEL, pNext}

instance Offset "type_" VkPerformanceOverrideInfoINTEL where
  rawOffset = #{offset VkPerformanceOverrideInfoINTEL, type}

instance Offset "enable" VkPerformanceOverrideInfoINTEL where
  rawOffset = #{offset VkPerformanceOverrideInfoINTEL, enable}

instance Offset "parameter" VkPerformanceOverrideInfoINTEL where
  rawOffset = #{offset VkPerformanceOverrideInfoINTEL, parameter}

instance Offset "type" VkPerformanceOverrideInfoINTEL where
  rawOffset = rawOffset @"type_" @VkPerformanceOverrideInfoINTEL

instance HasField "type" VkPerformanceOverrideInfoINTEL VkPerformanceOverrideTypeINTEL where
  getField = getField @"type_" @VkPerformanceOverrideInfoINTEL

#else

module Vulkan.Types.Struct.VkPerformanceOverrideInfoINTEL where

#endif