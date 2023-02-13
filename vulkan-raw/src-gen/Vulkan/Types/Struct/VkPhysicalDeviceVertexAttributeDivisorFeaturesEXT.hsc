{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_vertex_attribute_divisor

module Vulkan.Types.Struct.VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT" #-} VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT =
       VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , vertexAttributeInstanceRateDivisor :: VkBool32
         , vertexAttributeInstanceRateZeroDivisor :: VkBool32
         }

instance Storable VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vertexAttributeInstanceRateDivisor" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vertexAttributeInstanceRateZeroDivisor" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"vertexAttributeInstanceRateDivisor" ptr val
    pokeField @"vertexAttributeInstanceRateZeroDivisor" ptr val

instance Offset "sType" VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT, pNext}

instance Offset "vertexAttributeInstanceRateDivisor" VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT, vertexAttributeInstanceRateDivisor}

instance Offset "vertexAttributeInstanceRateZeroDivisor" VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT, vertexAttributeInstanceRateZeroDivisor}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT where

#endif