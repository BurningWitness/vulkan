{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Struct.VkBufferCollectionPropertiesFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkChromaLocation
import Vulkan.Types.Enum.VkFormatFeatureFlags
import Vulkan.Types.Enum.VkSamplerYcbcrModelConversion
import Vulkan.Types.Enum.VkSamplerYcbcrRange
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkComponentMapping
import Vulkan.Types.Struct.VkSysmemColorSpaceFUCHSIA



data {-# CTYPE "vulkan/vulkan.h" "VkBufferCollectionPropertiesFUCHSIA" #-} VkBufferCollectionPropertiesFUCHSIA =
       VkBufferCollectionPropertiesFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryTypeBits :: #{type uint32_t}
         , bufferCount :: #{type uint32_t}
         , createInfoIndex :: #{type uint32_t}
         , sysmemPixelFormat :: #{type uint64_t}
         , formatFeatures :: VkFormatFeatureFlags
         , sysmemColorSpaceIndex :: VkSysmemColorSpaceFUCHSIA
         , samplerYcbcrConversionComponents :: VkComponentMapping
         , suggestedYcbcrModel :: VkSamplerYcbcrModelConversion
         , suggestedYcbcrRange :: VkSamplerYcbcrRange
         , suggestedXChromaOffset :: VkChromaLocation
         , suggestedYChromaOffset :: VkChromaLocation
         }

instance Storable VkBufferCollectionPropertiesFUCHSIA where
  sizeOf    _ = #{size      VkBufferCollectionPropertiesFUCHSIA}
  alignment _ = #{alignment VkBufferCollectionPropertiesFUCHSIA}

  peek ptr = 
    VkBufferCollectionPropertiesFUCHSIA
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryTypeBits" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"createInfoIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sysmemPixelFormat" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"formatFeatures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sysmemColorSpaceIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"samplerYcbcrConversionComponents" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"suggestedYcbcrModel" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"suggestedYcbcrRange" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"suggestedXChromaOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"suggestedYChromaOffset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryTypeBits" ptr val
    pokeField @"bufferCount" ptr val
    pokeField @"createInfoIndex" ptr val
    pokeField @"sysmemPixelFormat" ptr val
    pokeField @"formatFeatures" ptr val
    pokeField @"sysmemColorSpaceIndex" ptr val
    pokeField @"samplerYcbcrConversionComponents" ptr val
    pokeField @"suggestedYcbcrModel" ptr val
    pokeField @"suggestedYcbcrRange" ptr val
    pokeField @"suggestedXChromaOffset" ptr val
    pokeField @"suggestedYChromaOffset" ptr val

instance Offset "sType" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, sType}

instance Offset "pNext" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, pNext}

instance Offset "memoryTypeBits" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, memoryTypeBits}

instance Offset "bufferCount" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, bufferCount}

instance Offset "createInfoIndex" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, createInfoIndex}

instance Offset "sysmemPixelFormat" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, sysmemPixelFormat}

instance Offset "formatFeatures" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, formatFeatures}

instance Offset "sysmemColorSpaceIndex" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, sysmemColorSpaceIndex}

instance Offset "samplerYcbcrConversionComponents" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, samplerYcbcrConversionComponents}

instance Offset "suggestedYcbcrModel" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, suggestedYcbcrModel}

instance Offset "suggestedYcbcrRange" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, suggestedYcbcrRange}

instance Offset "suggestedXChromaOffset" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, suggestedXChromaOffset}

instance Offset "suggestedYChromaOffset" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset VkBufferCollectionPropertiesFUCHSIA, suggestedYChromaOffset}

#else

module Vulkan.Types.Struct.VkBufferCollectionPropertiesFUCHSIA where

#endif