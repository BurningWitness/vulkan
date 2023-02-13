{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_capabilities

module Vulkan.Types.Struct.VkExternalBufferPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExternalMemoryProperties



data {-# CTYPE "vulkan/vulkan.h" "VkExternalBufferPropertiesKHR" #-} VkExternalBufferPropertiesKHR =
       VkExternalBufferPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , externalMemoryProperties :: VkExternalMemoryProperties
         }

instance Storable VkExternalBufferPropertiesKHR where
  sizeOf    _ = #{size      VkExternalBufferPropertiesKHR}
  alignment _ = #{alignment VkExternalBufferPropertiesKHR}

  peek ptr = 
    VkExternalBufferPropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"externalMemoryProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"externalMemoryProperties" ptr val

instance Offset "sType" VkExternalBufferPropertiesKHR where
  rawOffset = #{offset VkExternalBufferPropertiesKHR, sType}

instance Offset "pNext" VkExternalBufferPropertiesKHR where
  rawOffset = #{offset VkExternalBufferPropertiesKHR, pNext}

instance Offset "externalMemoryProperties" VkExternalBufferPropertiesKHR where
  rawOffset = #{offset VkExternalBufferPropertiesKHR, externalMemoryProperties}

#else

module Vulkan.Types.Struct.VkExternalBufferPropertiesKHR where

#endif