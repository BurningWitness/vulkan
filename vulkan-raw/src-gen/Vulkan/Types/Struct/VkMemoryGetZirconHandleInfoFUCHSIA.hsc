{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_external_memory

module Vulkan.Types.Struct.VkMemoryGetZirconHandleInfoFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryGetZirconHandleInfoFUCHSIA" #-} VkMemoryGetZirconHandleInfoFUCHSIA =
       VkMemoryGetZirconHandleInfoFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memory :: VkDeviceMemory
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         }

instance Storable VkMemoryGetZirconHandleInfoFUCHSIA where
  sizeOf    _ = #{size      struct VkMemoryGetZirconHandleInfoFUCHSIA}
  alignment _ = #{alignment struct VkMemoryGetZirconHandleInfoFUCHSIA}

  peek ptr = 
    VkMemoryGetZirconHandleInfoFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memory" ptr)
       <*> peek (offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memory" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkMemoryGetZirconHandleInfoFUCHSIA where
  rawOffset = #{offset struct VkMemoryGetZirconHandleInfoFUCHSIA, sType}

instance Offset "pNext" VkMemoryGetZirconHandleInfoFUCHSIA where
  rawOffset = #{offset struct VkMemoryGetZirconHandleInfoFUCHSIA, pNext}

instance Offset "memory" VkMemoryGetZirconHandleInfoFUCHSIA where
  rawOffset = #{offset struct VkMemoryGetZirconHandleInfoFUCHSIA, memory}

instance Offset "handleType" VkMemoryGetZirconHandleInfoFUCHSIA where
  rawOffset = #{offset struct VkMemoryGetZirconHandleInfoFUCHSIA, handleType}

#else

module Vulkan.Types.Struct.VkMemoryGetZirconHandleInfoFUCHSIA where

#endif