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

module Vulkan.Types.Struct.VkBufferCollectionConstraintsInfoFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBufferCollectionConstraintsInfoFUCHSIA" #-} VkBufferCollectionConstraintsInfoFUCHSIA =
       VkBufferCollectionConstraintsInfoFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , minBufferCount :: #{type uint32_t}
         , maxBufferCount :: #{type uint32_t}
         , minBufferCountForCamping :: #{type uint32_t}
         , minBufferCountForDedicatedSlack :: #{type uint32_t}
         , minBufferCountForSharedSlack :: #{type uint32_t}
         }

instance Storable VkBufferCollectionConstraintsInfoFUCHSIA where
  sizeOf    _ = #{size      VkBufferCollectionConstraintsInfoFUCHSIA}
  alignment _ = #{alignment VkBufferCollectionConstraintsInfoFUCHSIA}

  peek ptr = 
    VkBufferCollectionConstraintsInfoFUCHSIA
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minBufferCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxBufferCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minBufferCountForCamping" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minBufferCountForDedicatedSlack" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minBufferCountForSharedSlack" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"minBufferCount" ptr val
    pokeField @"maxBufferCount" ptr val
    pokeField @"minBufferCountForCamping" ptr val
    pokeField @"minBufferCountForDedicatedSlack" ptr val
    pokeField @"minBufferCountForSharedSlack" ptr val

instance Offset "sType" VkBufferCollectionConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionConstraintsInfoFUCHSIA, sType}

instance Offset "pNext" VkBufferCollectionConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionConstraintsInfoFUCHSIA, pNext}

instance Offset "minBufferCount" VkBufferCollectionConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionConstraintsInfoFUCHSIA, minBufferCount}

instance Offset "maxBufferCount" VkBufferCollectionConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionConstraintsInfoFUCHSIA, maxBufferCount}

instance Offset "minBufferCountForCamping" VkBufferCollectionConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionConstraintsInfoFUCHSIA, minBufferCountForCamping}

instance Offset "minBufferCountForDedicatedSlack" VkBufferCollectionConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionConstraintsInfoFUCHSIA, minBufferCountForDedicatedSlack}

instance Offset "minBufferCountForSharedSlack" VkBufferCollectionConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkBufferCollectionConstraintsInfoFUCHSIA, minBufferCountForSharedSlack}

#else

module Vulkan.Types.Struct.VkBufferCollectionConstraintsInfoFUCHSIA where

#endif