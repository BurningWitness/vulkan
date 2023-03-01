{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_capabilities

module Vulkan.Types.Struct.VkExternalFencePropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalFenceFeatureFlags
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExternalFencePropertiesKHR" #-} VkExternalFencePropertiesKHR =
       VkExternalFencePropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , exportFromImportedHandleTypes :: VkExternalFenceHandleTypeFlags
         , compatibleHandleTypes :: VkExternalFenceHandleTypeFlags
         , externalFenceFeatures :: VkExternalFenceFeatureFlags
         }

instance Storable VkExternalFencePropertiesKHR where
  sizeOf    _ = #{size      VkExternalFencePropertiesKHR}
  alignment _ = #{alignment VkExternalFencePropertiesKHR}

  peek ptr = 
    VkExternalFencePropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"exportFromImportedHandleTypes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"compatibleHandleTypes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"externalFenceFeatures" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"exportFromImportedHandleTypes" ptr val
    pokeField @"compatibleHandleTypes" ptr val
    pokeField @"externalFenceFeatures" ptr val

instance Offset "sType" VkExternalFencePropertiesKHR where
  rawOffset = #{offset VkExternalFencePropertiesKHR, sType}

instance Offset "pNext" VkExternalFencePropertiesKHR where
  rawOffset = #{offset VkExternalFencePropertiesKHR, pNext}

instance Offset "exportFromImportedHandleTypes" VkExternalFencePropertiesKHR where
  rawOffset = #{offset VkExternalFencePropertiesKHR, exportFromImportedHandleTypes}

instance Offset "compatibleHandleTypes" VkExternalFencePropertiesKHR where
  rawOffset = #{offset VkExternalFencePropertiesKHR, compatibleHandleTypes}

instance Offset "externalFenceFeatures" VkExternalFencePropertiesKHR where
  rawOffset = #{offset VkExternalFencePropertiesKHR, externalFenceFeatures}

#else

module Vulkan.Types.Struct.VkExternalFencePropertiesKHR where

#endif