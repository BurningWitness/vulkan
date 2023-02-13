{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_sampler_ycbcr_conversion

module Vulkan.Types.Struct.VkSamplerYcbcrConversionCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkChromaLocation
import Vulkan.Types.Enum.VkFilter
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkSamplerYcbcrModelConversion
import Vulkan.Types.Enum.VkSamplerYcbcrRange
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkComponentMapping



data {-# CTYPE "vulkan/vulkan.h" "VkSamplerYcbcrConversionCreateInfoKHR" #-} VkSamplerYcbcrConversionCreateInfoKHR =
       VkSamplerYcbcrConversionCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , format :: VkFormat
         , ycbcrModel :: VkSamplerYcbcrModelConversion
         , ycbcrRange :: VkSamplerYcbcrRange
         , components :: VkComponentMapping
         , xChromaOffset :: VkChromaLocation
         , yChromaOffset :: VkChromaLocation
         , chromaFilter :: VkFilter
         , forceExplicitReconstruction :: VkBool32
         }

instance Storable VkSamplerYcbcrConversionCreateInfoKHR where
  sizeOf    _ = #{size      VkSamplerYcbcrConversionCreateInfoKHR}
  alignment _ = #{alignment VkSamplerYcbcrConversionCreateInfoKHR}

  peek ptr = 
    VkSamplerYcbcrConversionCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"format" ptr)
       <*> peek (offset @"ycbcrModel" ptr)
       <*> peek (offset @"ycbcrRange" ptr)
       <*> peek (offset @"components" ptr)
       <*> peek (offset @"xChromaOffset" ptr)
       <*> peek (offset @"yChromaOffset" ptr)
       <*> peek (offset @"chromaFilter" ptr)
       <*> peek (offset @"forceExplicitReconstruction" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"format" ptr val
    pokeField @"ycbcrModel" ptr val
    pokeField @"ycbcrRange" ptr val
    pokeField @"components" ptr val
    pokeField @"xChromaOffset" ptr val
    pokeField @"yChromaOffset" ptr val
    pokeField @"chromaFilter" ptr val
    pokeField @"forceExplicitReconstruction" ptr val

instance Offset "sType" VkSamplerYcbcrConversionCreateInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfoKHR, sType}

instance Offset "pNext" VkSamplerYcbcrConversionCreateInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfoKHR, pNext}

instance Offset "format" VkSamplerYcbcrConversionCreateInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfoKHR, format}

instance Offset "ycbcrModel" VkSamplerYcbcrConversionCreateInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfoKHR, ycbcrModel}

instance Offset "ycbcrRange" VkSamplerYcbcrConversionCreateInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfoKHR, ycbcrRange}

instance Offset "components" VkSamplerYcbcrConversionCreateInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfoKHR, components}

instance Offset "xChromaOffset" VkSamplerYcbcrConversionCreateInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfoKHR, xChromaOffset}

instance Offset "yChromaOffset" VkSamplerYcbcrConversionCreateInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfoKHR, yChromaOffset}

instance Offset "chromaFilter" VkSamplerYcbcrConversionCreateInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfoKHR, chromaFilter}

instance Offset "forceExplicitReconstruction" VkSamplerYcbcrConversionCreateInfoKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfoKHR, forceExplicitReconstruction}

#else

module Vulkan.Types.Struct.VkSamplerYcbcrConversionCreateInfoKHR where

#endif