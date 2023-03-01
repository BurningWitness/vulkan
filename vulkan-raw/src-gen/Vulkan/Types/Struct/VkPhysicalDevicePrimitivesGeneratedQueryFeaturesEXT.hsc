{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT}

  peek ptr = 
    VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"primitivesGeneratedQuery" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"primitivesGeneratedQueryWithRasterizerDiscard" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"primitivesGeneratedQueryWithNonZeroStreams" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"primitivesGeneratedQuery" ptr val
    pokeField @"primitivesGeneratedQueryWithRasterizerDiscard" ptr val
    pokeField @"primitivesGeneratedQueryWithNonZeroStreams" ptr val

instance Offset "sType" VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT, pNext}

instance Offset "primitivesGeneratedQuery" VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT, primitivesGeneratedQuery}

instance Offset "primitivesGeneratedQueryWithRasterizerDiscard" VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT, primitivesGeneratedQueryWithRasterizerDiscard}

instance Offset "primitivesGeneratedQueryWithNonZeroStreams" VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where
  rawOffset = #{offset VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT, primitivesGeneratedQueryWithNonZeroStreams}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT where

#endif