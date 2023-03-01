{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_capabilities

module Vulkan.Types.Struct.VkExternalImageFormatPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExternalMemoryProperties



data {-# CTYPE "vulkan/vulkan.h" "VkExternalImageFormatPropertiesKHR" #-} VkExternalImageFormatPropertiesKHR =
       VkExternalImageFormatPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , externalMemoryProperties :: VkExternalMemoryProperties
         }

instance Storable VkExternalImageFormatPropertiesKHR where
  sizeOf    _ = #{size      VkExternalImageFormatPropertiesKHR}
  alignment _ = #{alignment VkExternalImageFormatPropertiesKHR}

  peek ptr = 
    VkExternalImageFormatPropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"externalMemoryProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"externalMemoryProperties" ptr val

instance Offset "sType" VkExternalImageFormatPropertiesKHR where
  rawOffset = #{offset VkExternalImageFormatPropertiesKHR, sType}

instance Offset "pNext" VkExternalImageFormatPropertiesKHR where
  rawOffset = #{offset VkExternalImageFormatPropertiesKHR, pNext}

instance Offset "externalMemoryProperties" VkExternalImageFormatPropertiesKHR where
  rawOffset = #{offset VkExternalImageFormatPropertiesKHR, externalMemoryProperties}

#else

module Vulkan.Types.Struct.VkExternalImageFormatPropertiesKHR where

#endif