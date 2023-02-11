{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Struct.VkBufferCollectionImageCreateInfoFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBufferCollectionImageCreateInfoFUCHSIA" #-} VkBufferCollectionImageCreateInfoFUCHSIA =
       VkBufferCollectionImageCreateInfoFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , collection :: VkBufferCollectionFUCHSIA
         , index :: #{type uint32_t}
         }

instance Storable VkBufferCollectionImageCreateInfoFUCHSIA where
  sizeOf    _ = #{size      struct VkBufferCollectionImageCreateInfoFUCHSIA}
  alignment _ = #{alignment struct VkBufferCollectionImageCreateInfoFUCHSIA}

  peek ptr = 
    VkBufferCollectionImageCreateInfoFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"collection" ptr)
       <*> peek (offset @"index" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"collection" ptr val
    pokeField @"index" ptr val

instance Offset "sType" VkBufferCollectionImageCreateInfoFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionImageCreateInfoFUCHSIA, sType}

instance Offset "pNext" VkBufferCollectionImageCreateInfoFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionImageCreateInfoFUCHSIA, pNext}

instance Offset "collection" VkBufferCollectionImageCreateInfoFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionImageCreateInfoFUCHSIA, collection}

instance Offset "index" VkBufferCollectionImageCreateInfoFUCHSIA where
  rawOffset = #{offset struct VkBufferCollectionImageCreateInfoFUCHSIA, index}

#else

module Vulkan.Types.Struct.VkBufferCollectionImageCreateInfoFUCHSIA where

#endif