{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_shading_rate_image

module Vulkan.Types.Struct.VkPipelineViewportCoarseSampleOrderStateCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCoarseSampleOrderTypeNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkCoarseSampleOrderCustomNV



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineViewportCoarseSampleOrderStateCreateInfoNV" #-} VkPipelineViewportCoarseSampleOrderStateCreateInfoNV =
       VkPipelineViewportCoarseSampleOrderStateCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , sampleOrderType :: VkCoarseSampleOrderTypeNV
         , customSampleOrderCount :: #{type uint32_t}
         , pCustomSampleOrders :: Ptr VkCoarseSampleOrderCustomNV
         }

instance Storable VkPipelineViewportCoarseSampleOrderStateCreateInfoNV where
  sizeOf    _ = #{size      VkPipelineViewportCoarseSampleOrderStateCreateInfoNV}
  alignment _ = #{alignment VkPipelineViewportCoarseSampleOrderStateCreateInfoNV}

  peek ptr = 
    VkPipelineViewportCoarseSampleOrderStateCreateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"sampleOrderType" ptr)
       <*> peek (offset @"customSampleOrderCount" ptr)
       <*> peek (offset @"pCustomSampleOrders" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"sampleOrderType" ptr val
    pokeField @"customSampleOrderCount" ptr val
    pokeField @"pCustomSampleOrders" ptr val

instance Offset "sType" VkPipelineViewportCoarseSampleOrderStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportCoarseSampleOrderStateCreateInfoNV, sType}

instance Offset "pNext" VkPipelineViewportCoarseSampleOrderStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportCoarseSampleOrderStateCreateInfoNV, pNext}

instance Offset "sampleOrderType" VkPipelineViewportCoarseSampleOrderStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportCoarseSampleOrderStateCreateInfoNV, sampleOrderType}

instance Offset "customSampleOrderCount" VkPipelineViewportCoarseSampleOrderStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportCoarseSampleOrderStateCreateInfoNV, customSampleOrderCount}

instance Offset "pCustomSampleOrders" VkPipelineViewportCoarseSampleOrderStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportCoarseSampleOrderStateCreateInfoNV, pCustomSampleOrders}

#else

module Vulkan.Types.Struct.VkPipelineViewportCoarseSampleOrderStateCreateInfoNV where

#endif