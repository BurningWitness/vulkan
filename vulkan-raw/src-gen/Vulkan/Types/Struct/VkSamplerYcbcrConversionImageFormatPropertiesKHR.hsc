{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_sampler_ycbcr_conversion

module Vulkan.Types.Struct.VkSamplerYcbcrConversionImageFormatPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSamplerYcbcrConversionImageFormatPropertiesKHR" #-} VkSamplerYcbcrConversionImageFormatPropertiesKHR =
       VkSamplerYcbcrConversionImageFormatPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , combinedImageSamplerDescriptorCount :: #{type uint32_t}
         }

instance Storable VkSamplerYcbcrConversionImageFormatPropertiesKHR where
  sizeOf    _ = #{size      VkSamplerYcbcrConversionImageFormatPropertiesKHR}
  alignment _ = #{alignment VkSamplerYcbcrConversionImageFormatPropertiesKHR}

  peek ptr = 
    VkSamplerYcbcrConversionImageFormatPropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"combinedImageSamplerDescriptorCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"combinedImageSamplerDescriptorCount" ptr val

instance Offset "sType" VkSamplerYcbcrConversionImageFormatPropertiesKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionImageFormatPropertiesKHR, sType}

instance Offset "pNext" VkSamplerYcbcrConversionImageFormatPropertiesKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionImageFormatPropertiesKHR, pNext}

instance Offset "combinedImageSamplerDescriptorCount" VkSamplerYcbcrConversionImageFormatPropertiesKHR where
  rawOffset = #{offset VkSamplerYcbcrConversionImageFormatPropertiesKHR, combinedImageSamplerDescriptorCount}

#else

module Vulkan.Types.Struct.VkSamplerYcbcrConversionImageFormatPropertiesKHR where

#endif