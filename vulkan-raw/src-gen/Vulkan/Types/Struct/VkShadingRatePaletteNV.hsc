{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_shading_rate_image

module Vulkan.Types.Struct.VkShadingRatePaletteNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkShadingRatePaletteEntryNV



data {-# CTYPE "vulkan/vulkan.h" "VkShadingRatePaletteNV" #-} VkShadingRatePaletteNV =
       VkShadingRatePaletteNV
         { shadingRatePaletteEntryCount :: #{type uint32_t}
         , pShadingRatePaletteEntries :: Ptr VkShadingRatePaletteEntryNV
         }

instance Storable VkShadingRatePaletteNV where
  sizeOf    _ = #{size      VkShadingRatePaletteNV}
  alignment _ = #{alignment VkShadingRatePaletteNV}

  peek ptr = 
    VkShadingRatePaletteNV
       <$> peek (offset @"shadingRatePaletteEntryCount" ptr)
       <*> peek (offset @"pShadingRatePaletteEntries" ptr)

  poke ptr val = do
    pokeField @"shadingRatePaletteEntryCount" ptr val
    pokeField @"pShadingRatePaletteEntries" ptr val

instance Offset "shadingRatePaletteEntryCount" VkShadingRatePaletteNV where
  rawOffset = #{offset VkShadingRatePaletteNV, shadingRatePaletteEntryCount}

instance Offset "pShadingRatePaletteEntries" VkShadingRatePaletteNV where
  rawOffset = #{offset VkShadingRatePaletteNV, pShadingRatePaletteEntries}

#else

module Vulkan.Types.Struct.VkShadingRatePaletteNV where

#endif