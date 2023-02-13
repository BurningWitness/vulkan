{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkExternalSemaphoreProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalSemaphoreFeatureFlags
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExternalSemaphoreProperties" #-} VkExternalSemaphoreProperties =
       VkExternalSemaphoreProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , exportFromImportedHandleTypes :: VkExternalSemaphoreHandleTypeFlags
         , compatibleHandleTypes :: VkExternalSemaphoreHandleTypeFlags
         , externalSemaphoreFeatures :: VkExternalSemaphoreFeatureFlags
         }

instance Storable VkExternalSemaphoreProperties where
  sizeOf    _ = #{size      VkExternalSemaphoreProperties}
  alignment _ = #{alignment VkExternalSemaphoreProperties}

  peek ptr = 
    VkExternalSemaphoreProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"exportFromImportedHandleTypes" ptr)
       <*> peek (offset @"compatibleHandleTypes" ptr)
       <*> peek (offset @"externalSemaphoreFeatures" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"exportFromImportedHandleTypes" ptr val
    pokeField @"compatibleHandleTypes" ptr val
    pokeField @"externalSemaphoreFeatures" ptr val

instance Offset "sType" VkExternalSemaphoreProperties where
  rawOffset = #{offset VkExternalSemaphoreProperties, sType}

instance Offset "pNext" VkExternalSemaphoreProperties where
  rawOffset = #{offset VkExternalSemaphoreProperties, pNext}

instance Offset "exportFromImportedHandleTypes" VkExternalSemaphoreProperties where
  rawOffset = #{offset VkExternalSemaphoreProperties, exportFromImportedHandleTypes}

instance Offset "compatibleHandleTypes" VkExternalSemaphoreProperties where
  rawOffset = #{offset VkExternalSemaphoreProperties, compatibleHandleTypes}

instance Offset "externalSemaphoreFeatures" VkExternalSemaphoreProperties where
  rawOffset = #{offset VkExternalSemaphoreProperties, externalSemaphoreFeatures}

#else

module Vulkan.Types.Struct.VkExternalSemaphoreProperties where

#endif