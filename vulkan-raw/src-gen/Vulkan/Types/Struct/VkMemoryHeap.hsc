{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkMemoryHeap where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkMemoryHeapFlags



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryHeap" #-} VkMemoryHeap =
       VkMemoryHeap
         { size :: VkDeviceSize -- ^ Available memory in the heap
         , flags :: VkMemoryHeapFlags -- ^ Flags for the heap
         }

instance Storable VkMemoryHeap where
  sizeOf    _ = #{size      VkMemoryHeap}
  alignment _ = #{alignment VkMemoryHeap}

  peek ptr = 
    VkMemoryHeap
       <$> peek (Foreign.Storable.Offset.offset @"size" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"size" ptr val
    pokeField @"flags" ptr val

instance Offset "size" VkMemoryHeap where
  rawOffset = #{offset VkMemoryHeap, size}

instance Offset "flags" VkMemoryHeap where
  rawOffset = #{offset VkMemoryHeap, flags}