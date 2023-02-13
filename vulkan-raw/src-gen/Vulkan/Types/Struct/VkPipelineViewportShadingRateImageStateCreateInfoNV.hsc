{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_shading_rate_image

module Vulkan.Types.Struct.VkPipelineViewportShadingRateImageStateCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkShadingRatePaletteNV



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineViewportShadingRateImageStateCreateInfoNV" #-} VkPipelineViewportShadingRateImageStateCreateInfoNV =
       VkPipelineViewportShadingRateImageStateCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shadingRateImageEnable :: VkBool32
         , viewportCount :: #{type uint32_t}
         , pShadingRatePalettes :: Ptr VkShadingRatePaletteNV
         }

instance Storable VkPipelineViewportShadingRateImageStateCreateInfoNV where
  sizeOf    _ = #{size      VkPipelineViewportShadingRateImageStateCreateInfoNV}
  alignment _ = #{alignment VkPipelineViewportShadingRateImageStateCreateInfoNV}

  peek ptr = 
    VkPipelineViewportShadingRateImageStateCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shadingRateImageEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"viewportCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pShadingRatePalettes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shadingRateImageEnable" ptr val
    pokeField @"viewportCount" ptr val
    pokeField @"pShadingRatePalettes" ptr val

instance Offset "sType" VkPipelineViewportShadingRateImageStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportShadingRateImageStateCreateInfoNV, sType}

instance Offset "pNext" VkPipelineViewportShadingRateImageStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportShadingRateImageStateCreateInfoNV, pNext}

instance Offset "shadingRateImageEnable" VkPipelineViewportShadingRateImageStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportShadingRateImageStateCreateInfoNV, shadingRateImageEnable}

instance Offset "viewportCount" VkPipelineViewportShadingRateImageStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportShadingRateImageStateCreateInfoNV, viewportCount}

instance Offset "pShadingRatePalettes" VkPipelineViewportShadingRateImageStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportShadingRateImageStateCreateInfoNV, pShadingRatePalettes}

#else

module Vulkan.Types.Struct.VkPipelineViewportShadingRateImageStateCreateInfoNV where

#endif