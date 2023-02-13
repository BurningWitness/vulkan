{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkFormatProperties3 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormatFeatureFlags2
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkFormatProperties3" #-} VkFormatProperties3 =
       VkFormatProperties3
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , linearTilingFeatures :: VkFormatFeatureFlags2
         , optimalTilingFeatures :: VkFormatFeatureFlags2
         , bufferFeatures :: VkFormatFeatureFlags2
         }

instance Storable VkFormatProperties3 where
  sizeOf    _ = #{size      VkFormatProperties3}
  alignment _ = #{alignment VkFormatProperties3}

  peek ptr = 
    VkFormatProperties3
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"linearTilingFeatures" ptr)
       <*> peek (offset @"optimalTilingFeatures" ptr)
       <*> peek (offset @"bufferFeatures" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"linearTilingFeatures" ptr val
    pokeField @"optimalTilingFeatures" ptr val
    pokeField @"bufferFeatures" ptr val

instance Offset "sType" VkFormatProperties3 where
  rawOffset = #{offset VkFormatProperties3, sType}

instance Offset "pNext" VkFormatProperties3 where
  rawOffset = #{offset VkFormatProperties3, pNext}

instance Offset "linearTilingFeatures" VkFormatProperties3 where
  rawOffset = #{offset VkFormatProperties3, linearTilingFeatures}

instance Offset "optimalTilingFeatures" VkFormatProperties3 where
  rawOffset = #{offset VkFormatProperties3, optimalTilingFeatures}

instance Offset "bufferFeatures" VkFormatProperties3 where
  rawOffset = #{offset VkFormatProperties3, bufferFeatures}

#else

module Vulkan.Types.Struct.VkFormatProperties3 where

#endif