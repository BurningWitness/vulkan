{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkExternalMemoryProperties}
  alignment _ = #{alignment struct VkExternalMemoryProperties}

  peek ptr = 
    VkExternalMemoryProperties
       <$> peek (offset @"externalMemoryFeatures" ptr)
       <*> peek (offset @"exportFromImportedHandleTypes" ptr)
       <*> peek (offset @"compatibleHandleTypes" ptr)

  poke ptr val = do
    pokeField @"externalMemoryFeatures" ptr val
    pokeField @"exportFromImportedHandleTypes" ptr val
    pokeField @"compatibleHandleTypes" ptr val

instance Offset "externalMemoryFeatures" VkExternalMemoryProperties where
  rawOffset = #{offset struct VkExternalMemoryProperties, externalMemoryFeatures}

instance Offset "exportFromImportedHandleTypes" VkExternalMemoryProperties where
  rawOffset = #{offset struct VkExternalMemoryProperties, exportFromImportedHandleTypes}

instance Offset "compatibleHandleTypes" VkExternalMemoryProperties where
  rawOffset = #{offset struct VkExternalMemoryProperties, compatibleHandleTypes}

#else

module Vulkan.Types.Struct.VkExternalMemoryProperties where

#endif