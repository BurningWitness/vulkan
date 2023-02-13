{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Struct.VkBufferConstraintsInfoFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormatFeatureFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkBufferCollectionConstraintsInfoFUCHSIA
import Vulkan.Types.Struct.VkBufferCreateInfo



data {-# CTYPE "vulkan/vulkan.h" "VkBufferConstraintsInfoFUCHSIA" #-} VkBufferConstraintsInfoFUCHSIA =
       VkBufferConstraintsInfoFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , createInfo :: VkBufferCreateInfo
         , requiredFormatFeatures :: VkFormatFeatureFlags
         , bufferCollectionConstraints :: VkBufferCollectionConstraintsInfoFUCHSIA
         }

instance Storable VkBufferConstraintsInfoFUCHSIA where
  sizeOf    _ = #{size      VkBufferConstraintsInfoFUCHSIA}
  alignment _ = #{alignment VkBufferConstraintsInfoFUCHSIA}

  peek ptr = 
    VkBufferConstraintsInfoFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"createInfo" ptr)
       <*> peek (offset @"requiredFormatFeatures" ptr)
       <*> peek (offset @"bufferCollectionConstraints" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"createInfo" ptr val
    pokeField @"requiredFormatFeatures" ptr val
    pokeField @"bufferCollectionConstraints" ptr val

instance Offset "sType" VkBufferConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkBufferConstraintsInfoFUCHSIA, sType}

instance Offset "pNext" VkBufferConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkBufferConstraintsInfoFUCHSIA, pNext}

instance Offset "createInfo" VkBufferConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkBufferConstraintsInfoFUCHSIA, createInfo}

instance Offset "requiredFormatFeatures" VkBufferConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkBufferConstraintsInfoFUCHSIA, requiredFormatFeatures}

instance Offset "bufferCollectionConstraints" VkBufferConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkBufferConstraintsInfoFUCHSIA, bufferCollectionConstraints}

#else

module Vulkan.Types.Struct.VkBufferConstraintsInfoFUCHSIA where

#endif