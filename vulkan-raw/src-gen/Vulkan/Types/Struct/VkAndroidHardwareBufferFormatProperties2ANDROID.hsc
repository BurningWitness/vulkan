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
  sizeOf    _ = #{size      struct VkAndroidHardwareBufferFormatProperties2ANDROID}
  alignment _ = #{alignment struct VkAndroidHardwareBufferFormatProperties2ANDROID}

  peek ptr = 
    VkAndroidHardwareBufferFormatProperties2ANDROID
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

instance Offset "sType" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferFormatProperties2ANDROID, sType}

instance Offset "pNext" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferFormatProperties2ANDROID, pNext}

instance Offset "format" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferFormatProperties2ANDROID, format}

instance Offset "externalFormat" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferFormatProperties2ANDROID, externalFormat}

instance Offset "formatFeatures" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferFormatProperties2ANDROID, formatFeatures}

instance Offset "samplerYcbcrConversionComponents" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferFormatProperties2ANDROID, samplerYcbcrConversionComponents}

instance Offset "suggestedYcbcrModel" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferFormatProperties2ANDROID, suggestedYcbcrModel}

instance Offset "suggestedYcbcrRange" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferFormatProperties2ANDROID, suggestedYcbcrRange}

instance Offset "suggestedXChromaOffset" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferFormatProperties2ANDROID, suggestedXChromaOffset}

instance Offset "suggestedYChromaOffset" VkAndroidHardwareBufferFormatProperties2ANDROID where
  rawOffset = #{offset struct VkAndroidHardwareBufferFormatProperties2ANDROID, suggestedYChromaOffset}

#else

module Vulkan.Types.Struct.VkAndroidHardwareBufferFormatProperties2ANDROID where

#endif