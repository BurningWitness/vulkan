{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkQueryPoolCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkQueryPipelineStatisticFlags
import Vulkan.Types.Enum.VkQueryPoolCreateFlags
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkQueryPoolCreateInfo" #-} VkQueryPoolCreateInfo =
       VkQueryPoolCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkQueryPoolCreateFlags
         , queryType :: VkQueryType
         , queryCount :: #{type uint32_t}
         , pipelineStatistics :: VkQueryPipelineStatisticFlags -- ^ Optional
         }

instance Storable VkQueryPoolCreateInfo where
  sizeOf    _ = #{size      VkQueryPoolCreateInfo}
  alignment _ = #{alignment VkQueryPoolCreateInfo}

  peek ptr = 
    VkQueryPoolCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"queryType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"queryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineStatistics" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"queryType" ptr val
    pokeField @"queryCount" ptr val
    pokeField @"pipelineStatistics" ptr val

instance Offset "sType" VkQueryPoolCreateInfo where
  rawOffset = #{offset VkQueryPoolCreateInfo, sType}

instance Offset "pNext" VkQueryPoolCreateInfo where
  rawOffset = #{offset VkQueryPoolCreateInfo, pNext}

instance Offset "flags" VkQueryPoolCreateInfo where
  rawOffset = #{offset VkQueryPoolCreateInfo, flags}

instance Offset "queryType" VkQueryPoolCreateInfo where
  rawOffset = #{offset VkQueryPoolCreateInfo, queryType}

instance Offset "queryCount" VkQueryPoolCreateInfo where
  rawOffset = #{offset VkQueryPoolCreateInfo, queryCount}

instance Offset "pipelineStatistics" VkQueryPoolCreateInfo where
  rawOffset = #{offset VkQueryPoolCreateInfo, pipelineStatistics}