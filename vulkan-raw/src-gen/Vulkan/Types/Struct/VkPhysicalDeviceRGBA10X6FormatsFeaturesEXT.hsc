{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_rgba10x6_formats

module Vulkan.Types.Struct.VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT" #-} VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT =
       VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , formatRgba10x6WithoutYCbCrSampler :: VkBool32
         }

instance Storable VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"formatRgba10x6WithoutYCbCrSampler" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"formatRgba10x6WithoutYCbCrSampler" ptr val

instance Offset "sType" VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT, pNext}

instance Offset "formatRgba10x6WithoutYCbCrSampler" VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT, formatRgba10x6WithoutYCbCrSampler}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT where

#endif