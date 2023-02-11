{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkSamplerYcbcrConversionImageFormatProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSamplerYcbcrConversionImageFormatProperties" #-} VkSamplerYcbcrConversionImageFormatProperties =
       VkSamplerYcbcrConversionImageFormatProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , combinedImageSamplerDescriptorCount :: #{type uint32_t}
         }

instance Storable VkSamplerYcbcrConversionImageFormatProperties where
  sizeOf    _ = #{size      struct VkSamplerYcbcrConversionImageFormatProperties}
  alignment _ = #{alignment struct VkSamplerYcbcrConversionImageFormatProperties}

  peek ptr = 
    VkSamplerYcbcrConversionImageFormatProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"combinedImageSamplerDescriptorCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"combinedImageSamplerDescriptorCount" ptr val

instance Offset "sType" VkSamplerYcbcrConversionImageFormatProperties where
  rawOffset = #{offset struct VkSamplerYcbcrConversionImageFormatProperties, sType}

instance Offset "pNext" VkSamplerYcbcrConversionImageFormatProperties where
  rawOffset = #{offset struct VkSamplerYcbcrConversionImageFormatProperties, pNext}

instance Offset "combinedImageSamplerDescriptorCount" VkSamplerYcbcrConversionImageFormatProperties where
  rawOffset = #{offset struct VkSamplerYcbcrConversionImageFormatProperties, combinedImageSamplerDescriptorCount}

#else

module Vulkan.Types.Struct.VkSamplerYcbcrConversionImageFormatProperties where

#endif