{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_shading_rate_image

module Vulkan.Types.Struct.VkCoarseSampleOrderCustomNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkShadingRatePaletteEntryNV
import Vulkan.Types.Struct.VkCoarseSampleLocationNV



data {-# CTYPE "vulkan/vulkan.h" "VkCoarseSampleOrderCustomNV" #-} VkCoarseSampleOrderCustomNV =
       VkCoarseSampleOrderCustomNV
         { shadingRate :: VkShadingRatePaletteEntryNV
         , sampleCount :: #{type uint32_t}
         , sampleLocationCount :: #{type uint32_t}
         , pSampleLocations :: Ptr VkCoarseSampleLocationNV
         }

instance Storable VkCoarseSampleOrderCustomNV where
  sizeOf    _ = #{size      VkCoarseSampleOrderCustomNV}
  alignment _ = #{alignment VkCoarseSampleOrderCustomNV}

  peek ptr = 
    VkCoarseSampleOrderCustomNV
       <$> peek (offset @"shadingRate" ptr)
       <*> peek (offset @"sampleCount" ptr)
       <*> peek (offset @"sampleLocationCount" ptr)
       <*> peek (offset @"pSampleLocations" ptr)

  poke ptr val = do
    pokeField @"shadingRate" ptr val
    pokeField @"sampleCount" ptr val
    pokeField @"sampleLocationCount" ptr val
    pokeField @"pSampleLocations" ptr val

instance Offset "shadingRate" VkCoarseSampleOrderCustomNV where
  rawOffset = #{offset VkCoarseSampleOrderCustomNV, shadingRate}

instance Offset "sampleCount" VkCoarseSampleOrderCustomNV where
  rawOffset = #{offset VkCoarseSampleOrderCustomNV, sampleCount}

instance Offset "sampleLocationCount" VkCoarseSampleOrderCustomNV where
  rawOffset = #{offset VkCoarseSampleOrderCustomNV, sampleLocationCount}

instance Offset "pSampleLocations" VkCoarseSampleOrderCustomNV where
  rawOffset = #{offset VkCoarseSampleOrderCustomNV, pSampleLocations}

#else

module Vulkan.Types.Struct.VkCoarseSampleOrderCustomNV where

#endif