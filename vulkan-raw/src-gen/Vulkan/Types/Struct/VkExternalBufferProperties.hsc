{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkExternalBufferProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExternalMemoryProperties



data {-# CTYPE "vulkan/vulkan.h" "VkExternalBufferProperties" #-} VkExternalBufferProperties =
       VkExternalBufferProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , externalMemoryProperties :: VkExternalMemoryProperties
         }

instance Storable VkExternalBufferProperties where
  sizeOf    _ = #{size      struct VkExternalBufferProperties}
  alignment _ = #{alignment struct VkExternalBufferProperties}

  peek ptr = 
    VkExternalBufferProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"externalMemoryProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"externalMemoryProperties" ptr val

instance Offset "sType" VkExternalBufferProperties where
  rawOffset = #{offset struct VkExternalBufferProperties, sType}

instance Offset "pNext" VkExternalBufferProperties where
  rawOffset = #{offset struct VkExternalBufferProperties, pNext}

instance Offset "externalMemoryProperties" VkExternalBufferProperties where
  rawOffset = #{offset struct VkExternalBufferProperties, externalMemoryProperties}

#else

module Vulkan.Types.Struct.VkExternalBufferProperties where

#endif