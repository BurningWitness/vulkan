{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkSamplerYcbcrConversionCreateInfo}
  alignment _ = #{alignment VkSamplerYcbcrConversionCreateInfo}

  peek ptr = 
    VkSamplerYcbcrConversionCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"format" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ycbcrModel" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ycbcrRange" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"components" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"xChromaOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"yChromaOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"chromaFilter" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"forceExplicitReconstruction" ptr)

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
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfo, sType}

instance Offset "pNext" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfo, pNext}

instance Offset "format" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfo, format}

instance Offset "ycbcrModel" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfo, ycbcrModel}

instance Offset "ycbcrRange" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfo, ycbcrRange}

instance Offset "components" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfo, components}

instance Offset "xChromaOffset" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfo, xChromaOffset}

instance Offset "yChromaOffset" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfo, yChromaOffset}

instance Offset "chromaFilter" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfo, chromaFilter}

instance Offset "forceExplicitReconstruction" VkSamplerYcbcrConversionCreateInfo where
  rawOffset = #{offset VkSamplerYcbcrConversionCreateInfo, forceExplicitReconstruction}

#else

module Vulkan.Types.Struct.VkSamplerYcbcrConversionCreateInfo where

#endif