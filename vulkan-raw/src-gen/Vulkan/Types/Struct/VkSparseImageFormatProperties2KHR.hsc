{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Struct.VkSparseImageFormatProperties2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSparseImageFormatProperties



data {-# CTYPE "vulkan/vulkan.h" "VkSparseImageFormatProperties2KHR" #-} VkSparseImageFormatProperties2KHR =
       VkSparseImageFormatProperties2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , properties :: VkSparseImageFormatProperties
         }

instance Storable VkSparseImageFormatProperties2KHR where
  sizeOf    _ = #{size      VkSparseImageFormatProperties2KHR}
  alignment _ = #{alignment VkSparseImageFormatProperties2KHR}

  peek ptr = 
    VkSparseImageFormatProperties2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"properties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"properties" ptr val

instance Offset "sType" VkSparseImageFormatProperties2KHR where
  rawOffset = #{offset VkSparseImageFormatProperties2KHR, sType}

instance Offset "pNext" VkSparseImageFormatProperties2KHR where
  rawOffset = #{offset VkSparseImageFormatProperties2KHR, pNext}

instance Offset "properties" VkSparseImageFormatProperties2KHR where
  rawOffset = #{offset VkSparseImageFormatProperties2KHR, properties}

#else

module Vulkan.Types.Struct.VkSparseImageFormatProperties2KHR where

#endif