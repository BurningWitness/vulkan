{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkSparseImageFormatProperties2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSparseImageFormatProperties



data {-# CTYPE "vulkan/vulkan.h" "VkSparseImageFormatProperties2" #-} VkSparseImageFormatProperties2 =
       VkSparseImageFormatProperties2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , properties :: VkSparseImageFormatProperties
         }

instance Storable VkSparseImageFormatProperties2 where
  sizeOf    _ = #{size      VkSparseImageFormatProperties2}
  alignment _ = #{alignment VkSparseImageFormatProperties2}

  peek ptr = 
    VkSparseImageFormatProperties2
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"properties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"properties" ptr val

instance Offset "sType" VkSparseImageFormatProperties2 where
  rawOffset = #{offset VkSparseImageFormatProperties2, sType}

instance Offset "pNext" VkSparseImageFormatProperties2 where
  rawOffset = #{offset VkSparseImageFormatProperties2, pNext}

instance Offset "properties" VkSparseImageFormatProperties2 where
  rawOffset = #{offset VkSparseImageFormatProperties2, properties}

#else

module Vulkan.Types.Struct.VkSparseImageFormatProperties2 where

#endif