{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_capabilities

module Vulkan.Types.Struct.VkExternalSemaphorePropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalSemaphoreFeatureFlags
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExternalSemaphorePropertiesKHR" #-} VkExternalSemaphorePropertiesKHR =
       VkExternalSemaphorePropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , exportFromImportedHandleTypes :: VkExternalSemaphoreHandleTypeFlags
         , compatibleHandleTypes :: VkExternalSemaphoreHandleTypeFlags
         , externalSemaphoreFeatures :: VkExternalSemaphoreFeatureFlags
         }

instance Storable VkExternalSemaphorePropertiesKHR where
  sizeOf    _ = #{size      VkExternalSemaphorePropertiesKHR}
  alignment _ = #{alignment VkExternalSemaphorePropertiesKHR}

  peek ptr = 
    VkExternalSemaphorePropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"exportFromImportedHandleTypes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"compatibleHandleTypes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"externalSemaphoreFeatures" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"exportFromImportedHandleTypes" ptr val
    pokeField @"compatibleHandleTypes" ptr val
    pokeField @"externalSemaphoreFeatures" ptr val

instance Offset "sType" VkExternalSemaphorePropertiesKHR where
  rawOffset = #{offset VkExternalSemaphorePropertiesKHR, sType}

instance Offset "pNext" VkExternalSemaphorePropertiesKHR where
  rawOffset = #{offset VkExternalSemaphorePropertiesKHR, pNext}

instance Offset "exportFromImportedHandleTypes" VkExternalSemaphorePropertiesKHR where
  rawOffset = #{offset VkExternalSemaphorePropertiesKHR, exportFromImportedHandleTypes}

instance Offset "compatibleHandleTypes" VkExternalSemaphorePropertiesKHR where
  rawOffset = #{offset VkExternalSemaphorePropertiesKHR, compatibleHandleTypes}

instance Offset "externalSemaphoreFeatures" VkExternalSemaphorePropertiesKHR where
  rawOffset = #{offset VkExternalSemaphorePropertiesKHR, externalSemaphoreFeatures}

#else

module Vulkan.Types.Struct.VkExternalSemaphorePropertiesKHR where

#endif