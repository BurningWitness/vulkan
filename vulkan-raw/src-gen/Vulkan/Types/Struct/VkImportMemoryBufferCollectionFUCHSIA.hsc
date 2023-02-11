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
  sizeOf    _ = #{size      struct VkImportMemoryBufferCollectionFUCHSIA}
  alignment _ = #{alignment struct VkImportMemoryBufferCollectionFUCHSIA}

  peek ptr = 
    VkImportMemoryBufferCollectionFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"collection" ptr)
       <*> peek (offset @"index" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"collection" ptr val
    pokeField @"index" ptr val

instance Offset "sType" VkImportMemoryBufferCollectionFUCHSIA where
  rawOffset = #{offset struct VkImportMemoryBufferCollectionFUCHSIA, sType}

instance Offset "pNext" VkImportMemoryBufferCollectionFUCHSIA where
  rawOffset = #{offset struct VkImportMemoryBufferCollectionFUCHSIA, pNext}

instance Offset "collection" VkImportMemoryBufferCollectionFUCHSIA where
  rawOffset = #{offset struct VkImportMemoryBufferCollectionFUCHSIA, collection}

instance Offset "index" VkImportMemoryBufferCollectionFUCHSIA where
  rawOffset = #{offset struct VkImportMemoryBufferCollectionFUCHSIA, index}

#else

module Vulkan.Types.Struct.VkImportMemoryBufferCollectionFUCHSIA where

#endif