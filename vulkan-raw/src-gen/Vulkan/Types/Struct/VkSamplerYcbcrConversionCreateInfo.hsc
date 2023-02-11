{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkSamplerYcbcrConversionCreateInfo where

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



data {-# CTYPE "vulkan/vulkan.h" "VkSamplerYcbcrConversionCreateInfo" #-} VkSamplerYcbcrConversionCreateInfo =
       VkSamplerYcbcrConversionCreateInfo
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

instance Storable VkSamplerYcbcrConversionCreateInfo where
  sizeOf    _ = #{size      struct VkSamplerYcbcrConversionCreateInfo}
  alignment _ = #{alignment struct VkSamplerYcbcrConversionCreateInfo}

  peek ptr = 
    VkSamplerYcbcrConversionCreateInfo
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

instance Offset "sType" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionCreateInfo, sType}

instance Offset "pNext" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionCreateInfo, pNext}

instance Offset "format" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionCreateInfo, format}

instance Offset "ycbcrModel" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionCreateInfo, ycbcrModel}

instance Offset "ycbcrRange" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionCreateInfo, ycbcrRange}

instance Offset "components" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionCreateInfo, components}

instance Offset "xChromaOffset" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionCreateInfo, xChromaOffset}

instance Offset "yChromaOffset" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionCreateInfo, yChromaOffset}

instance Offset "chromaFilter" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionCreateInfo, chromaFilter}

instance Offset "forceExplicitReconstruction" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset struct VkSamplerYcbcrConversionCreateInfo, forceExplicitReconstruction}

#else

module Vulkan.Types.Struct.VkSamplerYcbcrConversionCreateInfo where

#endif