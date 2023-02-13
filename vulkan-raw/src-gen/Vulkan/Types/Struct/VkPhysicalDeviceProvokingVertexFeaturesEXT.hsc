{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_provoking_vertex

module Vulkan.Types.Struct.VkPhysicalDeviceProvokingVertexFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceProvokingVertexFeaturesEXT" #-} VkPhysicalDeviceProvokingVertexFeaturesEXT =
       VkPhysicalDeviceProvokingVertexFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , provokingVertexLast :: VkBool32
         , transformFeedbackPreservesProvokingVertex :: VkBool32
         }

instance Storable VkPhysicalDeviceProvokingVertexFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceProvokingVertexFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceProvokingVertexFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceProvokingVertexFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"provokingVertexLast" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"transformFeedbackPreservesProvokingVertex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"provokingVertexLast" ptr val
    pokeField @"transformFeedbackPreservesProvokingVertex" ptr val

instance Offset "sType" VkPhysicalDeviceProvokingVertexFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceProvokingVertexFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceProvokingVertexFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceProvokingVertexFeaturesEXT, pNext}

instance Offset "provokingVertexLast" VkPhysicalDeviceProvokingVertexFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceProvokingVertexFeaturesEXT, provokingVertexLast}

instance Offset "transformFeedbackPreservesProvokingVertex" VkPhysicalDeviceProvokingVertexFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceProvokingVertexFeaturesEXT, transformFeedbackPreservesProvokingVertex}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceProvokingVertexFeaturesEXT where

#endif