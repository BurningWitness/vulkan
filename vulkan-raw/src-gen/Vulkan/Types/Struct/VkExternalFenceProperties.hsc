{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkExternalFenceProperties}
  alignment _ = #{alignment struct VkExternalFenceProperties}

  peek ptr = 
    VkExternalFenceProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"exportFromImportedHandleTypes" ptr)
       <*> peek (offset @"compatibleHandleTypes" ptr)
       <*> peek (offset @"externalFenceFeatures" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"exportFromImportedHandleTypes" ptr val
    pokeField @"compatibleHandleTypes" ptr val
    pokeField @"externalFenceFeatures" ptr val

instance Offset "sType" VkExternalFenceProperties where
  rawOffset = #{offset struct VkExternalFenceProperties, sType}

instance Offset "pNext" VkExternalFenceProperties where
  rawOffset = #{offset struct VkExternalFenceProperties, pNext}

instance Offset "exportFromImportedHandleTypes" VkExternalFenceProperties where
  rawOffset = #{offset struct VkExternalFenceProperties, exportFromImportedHandleTypes}

instance Offset "compatibleHandleTypes" VkExternalFenceProperties where
  rawOffset = #{offset struct VkExternalFenceProperties, compatibleHandleTypes}

instance Offset "externalFenceFeatures" VkExternalFenceProperties where
  rawOffset = #{offset struct VkExternalFenceProperties, externalFenceFeatures}

#else

module Vulkan.Types.Struct.VkExternalFenceProperties where

#endif