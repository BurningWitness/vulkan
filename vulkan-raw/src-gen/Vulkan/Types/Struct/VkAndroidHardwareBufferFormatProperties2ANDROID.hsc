{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_ANDROID_external_memory_android_hardware_buffer && VK_KHR_format_feature_flags2

module Vulkan.Types.Struct.VkAndroidHardwareBufferFormatProperties2ANDROID where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkChromaLocation
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkFormatFeatureFlags2
import Vulkan.Types.Enum.VkSamplerYcbcrModelConversion
import Vulkan.Types.Enum.VkSamplerYcbcrRange
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkComponentMapping



data {-# CTYPE "vulkan/vulkan.h" "VkAndroidHardwareBufferFormatProperties2ANDROID" #-} VkAndroidHardwareBufferFormatProperties2ANDROID =
       VkAndroidHardwareBufferFormatProperties2ANDROID
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , format :: VkFormat
         , externalFormat :: #{type uint64_t}
         , formatFeatures :: VkFormatFeatureFlags2
         , samplerYcbcrConversionComponents :: VkComponentMapping
         , suggestedYcbcrModel :: VkSamplerYcbcrModelConversion
         , suggestedYcbcrRange :: VkSamplerYcbcrRange
         , suggestedXChromaOffset :: VkChromaLocation
         , suggestedYChromaOffset :: VkChromaLocation
         }

instance Storable VkAndroidHardwareBufferFormatProperties2ANDROID where
  sizeOf    _ = #{size      VkAndroidHardwareBufferFormatProperties2ANDROID}
  alignment _ = #{alignment VkAndroidHardwareBufferFormatProperties2ANDROID}

  peek ptr = 
    VkAndroidHardwareBufferFormatProperties2ANDROID
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"format" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"externalFormat" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"formatFeatures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"samplerYcbcrConversionComponents" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"suggestedYcbcrModel" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"suggestedYcbcrRange" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"suggestedXChromaOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"suggestedYChromaOffset" ptr)

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

instance Offset "sType" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatProperties2ANDROID, sType}

instance Offset "pNext" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatProperties2ANDROID, pNext}

instance Offset "format" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatProperties2ANDROID, format}

instance Offset "externalFormat" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatProperties2ANDROID, externalFormat}

instance Offset "formatFeatures" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatProperties2ANDROID, formatFeatures}

instance Offset "samplerYcbcrConversionComponents" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatProperties2ANDROID, samplerYcbcrConversionComponents}

instance Offset "suggestedYcbcrModel" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatProperties2ANDROID, suggestedYcbcrModel}

instance Offset "suggestedYcbcrRange" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatProperties2ANDROID, suggestedYcbcrRange}

instance Offset "suggestedXChromaOffset" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatProperties2ANDROID, suggestedXChromaOffset}

instance Offset "suggestedYChromaOffset" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset VkAndroidHardwareBufferFormatProperties2ANDROID, suggestedYChromaOffset}

#else

module Vulkan.Types.Struct.VkAndroidHardwareBufferFormatProperties2ANDROID where

#endif