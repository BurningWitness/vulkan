{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Struct.VkBufferCollectionBufferCreateInfoFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBufferCollectionBufferCreateInfoFUCHSIA" #-} VkBufferCollectionBufferCreateInfoFUCHSIA =
       VkBufferCollectionBufferCreateInfoFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , collection :: VkBufferCollectionFUCHSIA
         , index :: #{type uint32_t}
         }

instance Storable VkBufferCollectionBufferCreateInfoFUCHSIA where
  sizeOf    _ = #{size      VkBufferCollectionBufferCreateInfoFUCHSIA}
  alignment _ = #{alignment VkBufferCollectionBufferCreateInfoFUCHSIA}

  peek ptr = 
    VkBufferCollectionBufferCreateInfoFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"collection" ptr)
       <*> peek (offset @"index" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"collection" ptr val
    pokeField @"index" ptr val

instance Offset "sType" VkBufferCollectionBufferCreateInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionBufferCreateInfoFUCHSIA, sType}

instance Offset "pNext" VkBufferCollectionBufferCreateInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionBufferCreateInfoFUCHSIA, pNext}

instance Offset "collection" VkBufferCollectionBufferCreateInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionBufferCreateInfoFUCHSIA, collection}

instance Offset "index" VkBufferCollectionBufferCreateInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionBufferCreateInfoFUCHSIA, index}

#else

module Vulkan.Types.Struct.VkBufferCollectionBufferCreateInfoFUCHSIA where

#endif