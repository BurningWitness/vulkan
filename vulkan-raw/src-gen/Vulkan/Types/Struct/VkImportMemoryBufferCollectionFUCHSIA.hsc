{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Struct.VkImportMemoryBufferCollectionFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImportMemoryBufferCollectionFUCHSIA" #-} VkImportMemoryBufferCollectionFUCHSIA =
       VkImportMemoryBufferCollectionFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , collection :: VkBufferCollectionFUCHSIA
         , index :: #{type uint32_t}
         }

instance Storable VkImportMemoryBufferCollectionFUCHSIA where
  sizeOf    _ = #{size      VkImportMemoryBufferCollectionFUCHSIA}
  alignment _ = #{alignment VkImportMemoryBufferCollectionFUCHSIA}

  peek ptr = 
    VkImportMemoryBufferCollectionFUCHSIA
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"collection" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"index" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"collection" ptr val
    pokeField @"index" ptr val

instance Offset "sType" VkImportMemoryBufferCollectionFUCHSIA where
  rawOffset = #{offset VkImportMemoryBufferCollectionFUCHSIA, sType}

instance Offset "pNext" VkImportMemoryBufferCollectionFUCHSIA where
  rawOffset = #{offset VkImportMemoryBufferCollectionFUCHSIA, pNext}

instance Offset "collection" VkImportMemoryBufferCollectionFUCHSIA where
  rawOffset = #{offset VkImportMemoryBufferCollectionFUCHSIA, collection}

instance Offset "index" VkImportMemoryBufferCollectionFUCHSIA where
  rawOffset = #{offset VkImportMemoryBufferCollectionFUCHSIA, index}

#else

module Vulkan.Types.Struct.VkImportMemoryBufferCollectionFUCHSIA where

#endif