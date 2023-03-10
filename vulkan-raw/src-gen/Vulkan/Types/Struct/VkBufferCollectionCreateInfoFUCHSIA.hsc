{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkBufferCollectionCreateInfoFUCHSIA}
  alignment _ = #{alignment VkBufferCollectionCreateInfoFUCHSIA}

  peek ptr = 
    VkBufferCollectionCreateInfoFUCHSIA
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"collectionToken" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"collectionToken" ptr val

instance Offset "sType" VkBufferCollectionCreateInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionCreateInfoFUCHSIA, sType}

instance Offset "pNext" VkBufferCollectionCreateInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionCreateInfoFUCHSIA, pNext}

instance Offset "collectionToken" VkBufferCollectionCreateInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionCreateInfoFUCHSIA, collectionToken}

#else

module Vulkan.Types.Struct.VkBufferCollectionCreateInfoFUCHSIA where

#endif