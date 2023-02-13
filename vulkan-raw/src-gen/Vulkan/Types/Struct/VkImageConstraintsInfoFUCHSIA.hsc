{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Types.Struct.VkImageConstraintsInfoFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageConstraintsInfoFlagsFUCHSIA
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkBufferCollectionConstraintsInfoFUCHSIA
import Vulkan.Types.Struct.VkImageFormatConstraintsInfoFUCHSIA



data {-# CTYPE "vulkan/vulkan.h" "VkImageConstraintsInfoFUCHSIA" #-} VkImageConstraintsInfoFUCHSIA =
       VkImageConstraintsInfoFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , formatConstraintsCount :: #{type uint32_t}
         , pFormatConstraints :: Ptr VkImageFormatConstraintsInfoFUCHSIA
         , bufferCollectionConstraints :: VkBufferCollectionConstraintsInfoFUCHSIA
         , flags :: VkImageConstraintsInfoFlagsFUCHSIA
         }

instance Storable VkImageConstraintsInfoFUCHSIA where
  sizeOf    _ = #{size      VkImageConstraintsInfoFUCHSIA}
  alignment _ = #{alignment VkImageConstraintsInfoFUCHSIA}

  peek ptr = 
    VkImageConstraintsInfoFUCHSIA
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"formatConstraintsCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pFormatConstraints" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferCollectionConstraints" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"formatConstraintsCount" ptr val
    pokeField @"pFormatConstraints" ptr val
    pokeField @"bufferCollectionConstraints" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkImageConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageConstraintsInfoFUCHSIA, sType}

instance Offset "pNext" VkImageConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageConstraintsInfoFUCHSIA, pNext}

instance Offset "formatConstraintsCount" VkImageConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageConstraintsInfoFUCHSIA, formatConstraintsCount}

instance Offset "pFormatConstraints" VkImageConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageConstraintsInfoFUCHSIA, pFormatConstraints}

instance Offset "bufferCollectionConstraints" VkImageConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageConstraintsInfoFUCHSIA, bufferCollectionConstraints}

instance Offset "flags" VkImageConstraintsInfoFUCHSIA where
  rawOffset = #{offset VkImageConstraintsInfoFUCHSIA, flags}

#else

module Vulkan.Types.Struct.VkImageConstraintsInfoFUCHSIA where

#endif