{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_blend_operation_advanced

module Vulkan.Types.Struct.VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT" #-} VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT =
       VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , advancedBlendMaxColorAttachments :: #{type uint32_t}
         , advancedBlendIndependentBlend :: VkBool32
         , advancedBlendNonPremultipliedSrcColor :: VkBool32
         , advancedBlendNonPremultipliedDstColor :: VkBool32
         , advancedBlendCorrelatedOverlap :: VkBool32
         , advancedBlendAllOperations :: VkBool32
         }

instance Storable VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"advancedBlendMaxColorAttachments" ptr)
       <*> peek (offset @"advancedBlendIndependentBlend" ptr)
       <*> peek (offset @"advancedBlendNonPremultipliedSrcColor" ptr)
       <*> peek (offset @"advancedBlendNonPremultipliedDstColor" ptr)
       <*> peek (offset @"advancedBlendCorrelatedOverlap" ptr)
       <*> peek (offset @"advancedBlendAllOperations" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"advancedBlendMaxColorAttachments" ptr val
    pokeField @"advancedBlendIndependentBlend" ptr val
    pokeField @"advancedBlendNonPremultipliedSrcColor" ptr val
    pokeField @"advancedBlendNonPremultipliedDstColor" ptr val
    pokeField @"advancedBlendCorrelatedOverlap" ptr val
    pokeField @"advancedBlendAllOperations" ptr val

instance Offset "sType" VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT, pNext}

instance Offset "advancedBlendMaxColorAttachments" VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT, advancedBlendMaxColorAttachments}

instance Offset "advancedBlendIndependentBlend" VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT, advancedBlendIndependentBlend}

instance Offset "advancedBlendNonPremultipliedSrcColor" VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT, advancedBlendNonPremultipliedSrcColor}

instance Offset "advancedBlendNonPremultipliedDstColor" VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT, advancedBlendNonPremultipliedDstColor}

instance Offset "advancedBlendCorrelatedOverlap" VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT, advancedBlendCorrelatedOverlap}

instance Offset "advancedBlendAllOperations" VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT, advancedBlendAllOperations}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT where

#endif