{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_ANDROID_external_memory_android_hardware_buffer

module Vulkan.Types.Struct.VkAndroidHardwareBufferFormatPropertiesANDROID where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkChromaLocation
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkFormatFeatureFlags
import Vulkan.Types.Enum.VkSamplerYcbcrModelConversion
import Vulkan.Types.Enum.VkSamplerYcbcrRange
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkComponentMapping



data {-# CTYPE "vulkan/vulkan.h" "VkAndroidHardwareBufferFormatPropertiesANDROID" #-} VkAndroidHardwareBufferFormatPropertiesANDROID =
       VkAndroidHardwareBufferFormatPropertiesANDROID
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , format :: VkFormat
         , externalFormat :: #{type uint64_t}
         , formatFeatures :: VkFormatFeatureFlags
         , samplerYcbcrConversionComponents :: VkComponentMapping
         , suggestedYcbcrModel :: VkSamplerYcbcrModelConversion
         , suggestedYcbcrRange :: VkSamplerYcbcrRange
         , suggestedXChromaOffset :: VkChromaLocation
         , suggestedYChromaOffset :: VkChromaLocation
         }

instance Storable VkAndroidHardwareBufferFormatPropertiesANDROID where
  sizeOf    _ = #{size      VkAndroidHardwareBufferFormatPropertiesANDROID}
  alignment _ = #{alignment VkAndroidHardwareBufferFormatPropertiesANDROID}

  peek ptr = 
    VkAndroidHardwareBufferFormatPropertiesANDROID
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"format" ptr)
       <*> peek (offset @"externalFormat" ptr)
       <*> peek (offset @"formatFeatures" ptr)
       <*> peek (offset @"samplerYcbcrConversionComponents" ptr)
       <*> peek (offset @"suggestedYcbcrModel" ptr)
       <*> peek (offset @"suggestedYcbcrRange" ptr)
       <*> peek (offset @"suggestedXChromaOffset" ptr)
       <*> peek (offset @"suggestedYChromaOffset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"format" ptr val
    pokeField @"externalFormat" ptr val
    pokeField @"formatFeatures" ptr val
    pokeField @"samplerYcbcrConversionComponents" ptr val
    pokeField @"suggestedYcbcrModel" ptr val
    pokeField @"suggestedYcbcrRange" ptr val
    pokeField @"suggestedXChromaOffset" ptr val
    pokeField @"suggestedYChromaOffset" ptr val

instance Offset "sType" VkAndroidHardwareBufferFormatPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatPropertiesANDROID, sType}

instance Offset "pNext" VkAndroidHardwareBufferFormatPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatPropertiesANDROID, pNext}

instance Offset "format" VkAndroidHardwareBufferFormatPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatPropertiesANDROID, format}

instance Offset "externalFormat" VkAndroidHardwareBufferFormatPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatPropertiesANDROID, externalFormat}

instance Offset "formatFeatures" VkAndroidHardwareBufferFormatPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatPropertiesANDROID, formatFeatures}

instance Offset "samplerYcbcrConversionComponents" VkAndroidHardwareBufferFormatPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatPropertiesANDROID, samplerYcbcrConversionComponents}

instance Offset "suggestedYcbcrModel" VkAndroidHardwareBufferFormatPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatPropertiesANDROID, suggestedYcbcrModel}

instance Offset "suggestedYcbcrRange" VkAndroidHardwareBufferFormatPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatPropertiesANDROID, suggestedYcbcrRange}

instance Offset "suggestedXChromaOffset" VkAndroidHardwareBufferFormatPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatPropertiesANDROID, suggestedXChromaOffset}

instance Offset "suggestedYChromaOffset" VkAndroidHardwareBufferFormatPropertiesANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatPropertiesANDROID, suggestedYChromaOffset}

#else

module Vulkan.Types.Struct.VkAndroidHardwareBufferFormatPropertiesANDROID where

#endif