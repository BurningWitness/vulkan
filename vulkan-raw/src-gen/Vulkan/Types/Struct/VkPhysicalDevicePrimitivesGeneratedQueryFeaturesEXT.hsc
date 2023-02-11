{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_primitives_generated_query

module Vulkan.Types.Struct.VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT" #-} VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT =
       VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , primitivesGeneratedQuery :: VkBool32
         , primitivesGeneratedQueryWithRasterizerDiscard :: VkBool32
         , primitivesGeneratedQueryWithNonZeroStreams :: VkBool32
         }

instance Storable VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT}

  peek ptr = 
    VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"primitivesGeneratedQuery" ptr)
       <*> peek (offset @"primitivesGeneratedQueryWithRasterizerDiscard" ptr)
       <*> peek (offset @"primitivesGeneratedQueryWithNonZeroStreams" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"primitivesGeneratedQuery" ptr val
    pokeField @"primitivesGeneratedQueryWithRasterizerDiscard" ptr val
    pokeField @"primitivesGeneratedQueryWithNonZeroStreams" ptr val

instance Offset "sType" VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT, pNext}

instance Offset "primitivesGeneratedQuery" VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT, primitivesGeneratedQuery}

instance Offset "primitivesGeneratedQueryWithRasterizerDiscard" VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT, primitivesGeneratedQueryWithRasterizerDiscard}

instance Offset "primitivesGeneratedQueryWithNonZeroStreams" VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT, primitivesGeneratedQueryWithNonZeroStreams}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where

#endif