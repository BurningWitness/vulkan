{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkExternalImageFormatProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExternalMemoryProperties



data {-# CTYPE "vulkan/vulkan.h" "VkExternalImageFormatProperties" #-} VkExternalImageFormatProperties =
       VkExternalImageFormatProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , externalMemoryProperties :: VkExternalMemoryProperties
         }

instance Storable VkExternalImageFormatProperties where
  sizeOf    _ = #{size      VkExternalImageFormatProperties}
  alignment _ = #{alignment VkExternalImageFormatProperties}

  peek ptr = 
    VkExternalImageFormatProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"externalMemoryProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"externalMemoryProperties" ptr val

instance Offset "sType" VkExternalImageFormatProperties where
  rawOffset = #{offset VkExternalImageFormatProperties, sType}

instance Offset "pNext" VkExternalImageFormatProperties where
  rawOffset = #{offset VkExternalImageFormatProperties, pNext}

instance Offset "externalMemoryProperties" VkExternalImageFormatProperties where
  rawOffset = #{offset VkExternalImageFormatProperties, externalMemoryProperties}

#else

module Vulkan.Types.Struct.VkExternalImageFormatProperties where

#endif