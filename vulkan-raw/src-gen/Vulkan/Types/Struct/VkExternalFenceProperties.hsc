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

module Vulkan.Types.Struct.VkExternalFenceProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalFenceFeatureFlags
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExternalFenceProperties" #-} VkExternalFenceProperties =
       VkExternalFenceProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , exportFromImportedHandleTypes :: VkExternalFenceHandleTypeFlags
         , compatibleHandleTypes :: VkExternalFenceHandleTypeFlags
         , externalFenceFeatures :: VkExternalFenceFeatureFlags
         }

instance Storable VkExternalFenceProperties where
  sizeOf    _ = #{size      VkExternalFenceProperties}
  alignment _ = #{alignment VkExternalFenceProperties}

  peek ptr = 
    VkExternalFenceProperties
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

instance Offset "sType" VkExternalFenceProperties where
  rawOffset = #{offset VkExternalFenceProperties, sType}

instance Offset "pNext" VkExternalFenceProperties where
  rawOffset = #{offset VkExternalFenceProperties, pNext}

instance Offset "exportFromImportedHandleTypes" VkExternalFenceProperties where
  rawOffset = #{offset VkExternalFenceProperties, exportFromImportedHandleTypes}

instance Offset "compatibleHandleTypes" VkExternalFenceProperties where
  rawOffset = #{offset VkExternalFenceProperties, compatibleHandleTypes}

instance Offset "externalFenceFeatures" VkExternalFenceProperties where
  rawOffset = #{offset VkExternalFenceProperties, externalFenceFeatures}

#else

module Vulkan.Types.Struct.VkExternalFenceProperties where

#endif