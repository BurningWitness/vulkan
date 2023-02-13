{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_capabilities

module Vulkan.Types.Struct.VkExternalMemoryPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryFeatureFlags
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlags



data {-# CTYPE "vulkan/vulkan.h" "VkExternalMemoryPropertiesKHR" #-} VkExternalMemoryPropertiesKHR =
       VkExternalMemoryPropertiesKHR
         { externalMemoryFeatures :: VkExternalMemoryFeatureFlags
         , exportFromImportedHandleTypes :: VkExternalMemoryHandleTypeFlags
         , compatibleHandleTypes :: VkExternalMemoryHandleTypeFlags
         }

instance Storable VkExternalMemoryPropertiesKHR where
  sizeOf    _ = #{size      VkExternalMemoryPropertiesKHR}
  alignment _ = #{alignment VkExternalMemoryPropertiesKHR}

  peek ptr = 
    VkExternalMemoryPropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"externalMemoryFeatures" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"exportFromImportedHandleTypes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"compatibleHandleTypes" ptr)

  poke ptr val = do
    pokeField @"externalMemoryFeatures" ptr val
    pokeField @"exportFromImportedHandleTypes" ptr val
    pokeField @"compatibleHandleTypes" ptr val

instance Offset "externalMemoryFeatures" VkExternalMemoryPropertiesKHR where
  rawOffset = #{offset VkExternalMemoryPropertiesKHR, externalMemoryFeatures}

instance Offset "exportFromImportedHandleTypes" VkExternalMemoryPropertiesKHR where
  rawOffset = #{offset VkExternalMemoryPropertiesKHR, exportFromImportedHandleTypes}

instance Offset "compatibleHandleTypes" VkExternalMemoryPropertiesKHR where
  rawOffset = #{offset VkExternalMemoryPropertiesKHR, compatibleHandleTypes}

#else

module Vulkan.Types.Struct.VkExternalMemoryPropertiesKHR where

#endif