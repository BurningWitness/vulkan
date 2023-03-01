{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_format_feature_flags2

module Vulkan.Types.Struct.VkFormatProperties3KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormatFeatureFlags2
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkFormatProperties3KHR" #-} VkFormatProperties3KHR =
       VkFormatProperties3KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , linearTilingFeatures :: VkFormatFeatureFlags2
         , optimalTilingFeatures :: VkFormatFeatureFlags2
         , bufferFeatures :: VkFormatFeatureFlags2
         }

instance Storable VkFormatProperties3KHR where
  sizeOf    _ = #{size      VkFormatProperties3KHR}
  alignment _ = #{alignment VkFormatProperties3KHR}

  peek ptr = 
    VkFormatProperties3KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"linearTilingFeatures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"optimalTilingFeatures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferFeatures" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"linearTilingFeatures" ptr val
    pokeField @"optimalTilingFeatures" ptr val
    pokeField @"bufferFeatures" ptr val

instance Offset "sType" VkFormatProperties3KHR where
  rawOffset = #{offset VkFormatProperties3KHR, sType}

instance Offset "pNext" VkFormatProperties3KHR where
  rawOffset = #{offset VkFormatProperties3KHR, pNext}

instance Offset "linearTilingFeatures" VkFormatProperties3KHR where
  rawOffset = #{offset VkFormatProperties3KHR, linearTilingFeatures}

instance Offset "optimalTilingFeatures" VkFormatProperties3KHR where
  rawOffset = #{offset VkFormatProperties3KHR, optimalTilingFeatures}

instance Offset "bufferFeatures" VkFormatProperties3KHR where
  rawOffset = #{offset VkFormatProperties3KHR, bufferFeatures}

#else

module Vulkan.Types.Struct.VkFormatProperties3KHR where

#endif