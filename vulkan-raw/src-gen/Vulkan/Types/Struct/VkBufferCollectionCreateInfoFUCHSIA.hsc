{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Struct.VkBufferCollectionCreateInfoFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBufferCollectionCreateInfoFUCHSIA" #-} VkBufferCollectionCreateInfoFUCHSIA =
       VkBufferCollectionCreateInfoFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , collectionToken :: ZxHandleT
         }

instance Storable VkBufferCollectionCreateInfoFUCHSIA where
  sizeOf    _ = #{size      struct VkBufferCollectionCreateInfoFUCHSIA}
  alignment _ = #{alignment struct VkBufferCollectionCreateInfoFUCHSIA}

  peek ptr = 
    VkBufferCollectionCreateInfoFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"collectionToken" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"collectionToken" ptr val

instance Offset "sType" VkBufferCollectionCreateInfoFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionCreateInfoFUCHSIA, sType}

instance Offset "pNext" VkBufferCollectionCreateInfoFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionCreateInfoFUCHSIA, pNext}

instance Offset "collectionToken" VkBufferCollectionCreateInfoFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionCreateInfoFUCHSIA, collectionToken}

#else

module Vulkan.Types.Struct.VkBufferCollectionCreateInfoFUCHSIA where

#endif