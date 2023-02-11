{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_external_memory

module Vulkan.Types.Struct.VkMemoryZirconHandlePropertiesFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryZirconHandlePropertiesFUCHSIA" #-} VkMemoryZirconHandlePropertiesFUCHSIA =
       VkMemoryZirconHandlePropertiesFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryTypeBits :: #{type uint32_t}
         }

instance Storable VkMemoryZirconHandlePropertiesFUCHSIA where
  sizeOf    _ = #{size      struct VkMemoryZirconHandlePropertiesFUCHSIA}
  alignment _ = #{alignment struct VkMemoryZirconHandlePropertiesFUCHSIA}

  peek ptr = 
    VkMemoryZirconHandlePropertiesFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memoryTypeBits" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryTypeBits" ptr val

instance Offset "sType" VkMemoryZirconHandlePropertiesFUCHSIA where
  rawOffset = #{offset struct VkMemoryZirconHandlePropertiesFUCHSIA, sType}

instance Offset "pNext" VkMemoryZirconHandlePropertiesFUCHSIA where
  rawOffset = #{offset struct VkMemoryZirconHandlePropertiesFUCHSIA, pNext}

instance Offset "memoryTypeBits" VkMemoryZirconHandlePropertiesFUCHSIA where
  rawOffset = #{offset struct VkMemoryZirconHandlePropertiesFUCHSIA, memoryTypeBits}

#else

module Vulkan.Types.Struct.VkMemoryZirconHandlePropertiesFUCHSIA where

#endif