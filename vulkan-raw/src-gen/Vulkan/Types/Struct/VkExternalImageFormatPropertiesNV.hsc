{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory_capabilities

module Vulkan.Types.Struct.VkExternalImageFormatPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryFeatureFlagsNV
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsNV
import Vulkan.Types.Struct.VkImageFormatProperties



data {-# CTYPE "vulkan/vulkan.h" "VkExternalImageFormatPropertiesNV" #-} VkExternalImageFormatPropertiesNV =
       VkExternalImageFormatPropertiesNV
         { imageFormatProperties :: VkImageFormatProperties
         , externalMemoryFeatures :: VkExternalMemoryFeatureFlagsNV
         , exportFromImportedHandleTypes :: VkExternalMemoryHandleTypeFlagsNV
         , compatibleHandleTypes :: VkExternalMemoryHandleTypeFlagsNV
         }

instance Storable VkExternalImageFormatPropertiesNV where
  sizeOf    _ = #{size      VkExternalImageFormatPropertiesNV}
  alignment _ = #{alignment VkExternalImageFormatPropertiesNV}

  peek ptr = 
    VkExternalImageFormatPropertiesNV
       <$> peek (Foreign.Storable.Offset.offset @"imageFormatProperties" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"externalMemoryFeatures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"exportFromImportedHandleTypes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"compatibleHandleTypes" ptr)

  poke ptr val = do
    pokeField @"imageFormatProperties" ptr val
    pokeField @"externalMemoryFeatures" ptr val
    pokeField @"exportFromImportedHandleTypes" ptr val
    pokeField @"compatibleHandleTypes" ptr val

instance Offset "imageFormatProperties" VkExternalImageFormatPropertiesNV where
  rawOffset = #{offset VkExternalImageFormatPropertiesNV, imageFormatProperties}

instance Offset "externalMemoryFeatures" VkExternalImageFormatPropertiesNV where
  rawOffset = #{offset VkExternalImageFormatPropertiesNV, externalMemoryFeatures}

instance Offset "exportFromImportedHandleTypes" VkExternalImageFormatPropertiesNV where
  rawOffset = #{offset VkExternalImageFormatPropertiesNV, exportFromImportedHandleTypes}

instance Offset "compatibleHandleTypes" VkExternalImageFormatPropertiesNV where
  rawOffset = #{offset VkExternalImageFormatPropertiesNV, compatibleHandleTypes}

#else

module Vulkan.Types.Struct.VkExternalImageFormatPropertiesNV where

#endif