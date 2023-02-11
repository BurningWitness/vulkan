{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkFormatProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormatFeatureFlags



data {-# CTYPE "vulkan/vulkan.h" "VkFormatProperties" #-} VkFormatProperties =
       VkFormatProperties
         { linearTilingFeatures :: VkFormatFeatureFlags -- ^ Format features in case of linear tiling
         , optimalTilingFeatures :: VkFormatFeatureFlags -- ^ Format features in case of optimal tiling
         , bufferFeatures :: VkFormatFeatureFlags -- ^ Format features supported by buffers
         }

instance Storable VkFormatProperties where
  sizeOf    _ = #{size      struct VkFormatProperties}
  alignment _ = #{alignment struct VkFormatProperties}

  peek ptr = 
    VkFormatProperties
       <$> peek (offset @"linearTilingFeatures" ptr)
       <*> peek (offset @"optimalTilingFeatures" ptr)
       <*> peek (offset @"bufferFeatures" ptr)

  poke ptr val = do
    pokeField @"linearTilingFeatures" ptr val
    pokeField @"optimalTilingFeatures" ptr val
    pokeField @"bufferFeatures" ptr val

instance Offset "linearTilingFeatures" VkFormatProperties where
  rawOffset = #{offset struct VkFormatProperties, linearTilingFeatures}

instance Offset "optimalTilingFeatures" VkFormatProperties where
  rawOffset = #{offset struct VkFormatProperties, optimalTilingFeatures}

instance Offset "bufferFeatures" VkFormatProperties where
  rawOffset = #{offset struct VkFormatProperties, bufferFeatures}