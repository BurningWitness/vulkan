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

module Vulkan.Types.Struct.VkExternalMemoryProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryFeatureFlags
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlags



data {-# CTYPE "vulkan/vulkan.h" "VkExternalMemoryProperties" #-} VkExternalMemoryProperties =
       VkExternalMemoryProperties
         { externalMemoryFeatures :: VkExternalMemoryFeatureFlags
         , exportFromImportedHandleTypes :: VkExternalMemoryHandleTypeFlags
         , compatibleHandleTypes :: VkExternalMemoryHandleTypeFlags
         }

instance Storable VkExternalMemoryProperties where
  sizeOf    _ = #{size      VkExternalMemoryProperties}
  alignment _ = #{alignment VkExternalMemoryProperties}

  peek ptr = 
    VkExternalMemoryProperties
       <$> peek (Foreign.Storable.Offset.offset @"externalMemoryFeatures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"exportFromImportedHandleTypes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"compatibleHandleTypes" ptr)

  poke ptr val = do
    pokeField @"externalMemoryFeatures" ptr val
    pokeField @"exportFromImportedHandleTypes" ptr val
    pokeField @"compatibleHandleTypes" ptr val

instance Offset "externalMemoryFeatures" VkExternalMemoryProperties where
  rawOffset = #{offset VkExternalMemoryProperties, externalMemoryFeatures}

instance Offset "exportFromImportedHandleTypes" VkExternalMemoryProperties where
  rawOffset = #{offset VkExternalMemoryProperties, exportFromImportedHandleTypes}

instance Offset "compatibleHandleTypes" VkExternalMemoryProperties where
  rawOffset = #{offset VkExternalMemoryProperties, compatibleHandleTypes}

#else

module Vulkan.Types.Struct.VkExternalMemoryProperties where

#endif