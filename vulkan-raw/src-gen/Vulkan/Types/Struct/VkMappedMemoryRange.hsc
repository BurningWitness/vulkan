{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkMappedMemoryRange where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkMappedMemoryRange" #-} VkMappedMemoryRange =
       VkMappedMemoryRange
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memory :: VkDeviceMemory -- ^ Mapped memory object
         , offset :: VkDeviceSize -- ^ Offset within the memory object where the range starts
         , size :: VkDeviceSize -- ^ Size of the range within the memory object
         }

instance Storable VkMappedMemoryRange where
  sizeOf    _ = #{size      VkMappedMemoryRange}
  alignment _ = #{alignment VkMappedMemoryRange}

  peek ptr = 
    VkMappedMemoryRange
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memory" ptr)
       <*> peek (offset @"offset" ptr)
       <*> peek (offset @"size" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memory" ptr val
    pokeField @"offset" ptr val
    pokeField @"size" ptr val

instance Offset "sType" VkMappedMemoryRange where
  rawOffset = #{offset VkMappedMemoryRange, sType}

instance Offset "pNext" VkMappedMemoryRange where
  rawOffset = #{offset VkMappedMemoryRange, pNext}

instance Offset "memory" VkMappedMemoryRange where
  rawOffset = #{offset VkMappedMemoryRange, memory}

instance Offset "offset" VkMappedMemoryRange where
  rawOffset = #{offset VkMappedMemoryRange, offset}

instance Offset "size" VkMappedMemoryRange where
  rawOffset = #{offset VkMappedMemoryRange, size}