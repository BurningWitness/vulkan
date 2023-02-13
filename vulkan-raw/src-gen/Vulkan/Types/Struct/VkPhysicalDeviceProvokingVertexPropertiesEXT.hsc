{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_provoking_vertex

module Vulkan.Types.Struct.VkPhysicalDeviceProvokingVertexPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceProvokingVertexPropertiesEXT" #-} VkPhysicalDeviceProvokingVertexPropertiesEXT =
       VkPhysicalDeviceProvokingVertexPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , provokingVertexModePerPipeline :: VkBool32
         , transformFeedbackPreservesTriangleFanProvokingVertex :: VkBool32
         }

instance Storable VkPhysicalDeviceProvokingVertexPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceProvokingVertexPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceProvokingVertexPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceProvokingVertexPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"provokingVertexModePerPipeline" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"transformFeedbackPreservesTriangleFanProvokingVertex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"provokingVertexModePerPipeline" ptr val
    pokeField @"transformFeedbackPreservesTriangleFanProvokingVertex" ptr val

instance Offset "sType" VkPhysicalDeviceProvokingVertexPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceProvokingVertexPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceProvokingVertexPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceProvokingVertexPropertiesEXT, pNext}

instance Offset "provokingVertexModePerPipeline" VkPhysicalDeviceProvokingVertexPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceProvokingVertexPropertiesEXT, provokingVertexModePerPipeline}

instance Offset "transformFeedbackPreservesTriangleFanProvokingVertex" VkPhysicalDeviceProvokingVertexPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceProvokingVertexPropertiesEXT, transformFeedbackPreservesTriangleFanProvokingVertex}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceProvokingVertexPropertiesEXT where

#endif