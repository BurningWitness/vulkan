{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_external_memory_host

module Vulkan.Types.Struct.VkMemoryHostPointerPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryHostPointerPropertiesEXT" #-} VkMemoryHostPointerPropertiesEXT =
       VkMemoryHostPointerPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryTypeBits :: #{type uint32_t}
         }

instance Storable VkMemoryHostPointerPropertiesEXT where
  sizeOf    _ = #{size      VkMemoryHostPointerPropertiesEXT}
  alignment _ = #{alignment VkMemoryHostPointerPropertiesEXT}

  peek ptr = 
    VkMemoryHostPointerPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memoryTypeBits" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryTypeBits" ptr val

instance Offset "sType" VkMemoryHostPointerPropertiesEXT where
  rawOffset = #{offset VkMemoryHostPointerPropertiesEXT, sType}

instance Offset "pNext" VkMemoryHostPointerPropertiesEXT where
  rawOffset = #{offset VkMemoryHostPointerPropertiesEXT, pNext}

instance Offset "memoryTypeBits" VkMemoryHostPointerPropertiesEXT where
  rawOffset = #{offset VkMemoryHostPointerPropertiesEXT, memoryTypeBits}

#else

module Vulkan.Types.Struct.VkMemoryHostPointerPropertiesEXT where

#endif