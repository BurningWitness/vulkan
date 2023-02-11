{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_blend_operation_advanced

module Vulkan.Types.Struct.VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT" #-} VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT =
       VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , advancedBlendCoherentOperations :: VkBool32
         }

instance Storable VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"advancedBlendCoherentOperations" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"advancedBlendCoherentOperations" ptr val

instance Offset "sType" VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT, pNext}

instance Offset "advancedBlendCoherentOperations" VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT, advancedBlendCoherentOperations}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT where

#endif