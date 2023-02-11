{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkBufferCollectionPropertiesFUCHSIA}
  alignment _ = #{alignment struct VkBufferCollectionPropertiesFUCHSIA}

  peek ptr = 
    VkBufferCollectionPropertiesFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memoryTypeBits" ptr)
       <*> peek (offset @"bufferCount" ptr)
       <*> peek (offset @"createInfoIndex" ptr)
       <*> peek (offset @"sysmemPixelFormat" ptr)
       <*> peek (offset @"formatFeatures" ptr)
       <*> peek (offset @"sysmemColorSpaceIndex" ptr)
       <*> peek (offset @"samplerYcbcrConversionComponents" ptr)
       <*> peek (offset @"suggestedYcbcrModel" ptr)
       <*> peek (offset @"suggestedYcbcrRange" ptr)
       <*> peek (offset @"suggestedXChromaOffset" ptr)
       <*> peek (offset @"suggestedYChromaOffset" ptr)

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
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, sType}

instance Offset "pNext" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, pNext}

instance Offset "memoryTypeBits" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, memoryTypeBits}

instance Offset "bufferCount" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, bufferCount}

instance Offset "createInfoIndex" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, createInfoIndex}

instance Offset "sysmemPixelFormat" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, sysmemPixelFormat}

instance Offset "formatFeatures" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, formatFeatures}

instance Offset "sysmemColorSpaceIndex" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, sysmemColorSpaceIndex}

instance Offset "samplerYcbcrConversionComponents" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, samplerYcbcrConversionComponents}

instance Offset "suggestedYcbcrModel" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, suggestedYcbcrModel}

instance Offset "suggestedYcbcrRange" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, suggestedYcbcrRange}

instance Offset "suggestedXChromaOffset" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, suggestedXChromaOffset}

instance Offset "suggestedYChromaOffset" VkBufferCollectionPropertiesFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionPropertiesFUCHSIA, suggestedYChromaOffset}

#else

module Vulkan.Types.Struct.VkBufferCollectionPropertiesFUCHSIA where

#endif