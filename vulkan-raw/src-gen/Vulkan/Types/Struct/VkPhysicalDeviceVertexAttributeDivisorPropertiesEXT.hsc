{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_vertex_attribute_divisor

module Vulkan.Types.Struct.VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT" #-} VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT =
       VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxVertexAttribDivisor :: #{type uint32_t} -- ^ max value of vertex attribute divisor
         }

instance Storable VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxVertexAttribDivisor" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxVertexAttribDivisor" ptr val

instance Offset "sType" VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT, pNext}

instance Offset "maxVertexAttribDivisor" VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT, maxVertexAttribDivisor}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT where

#endif