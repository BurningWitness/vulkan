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
  sizeOf    _ = #{size      struct VkMemoryHeap}
  alignment _ = #{alignment struct VkMemoryHeap}

  peek ptr = 
    VkMemoryHeap
       <$> peek (offset @"size" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"size" ptr val
    pokeField @"flags" ptr val

instance Offset "size" VkMemoryHeap where
  rawOffset = #{offset struct VkMemoryHeap, size}

instance Offset "flags" VkMemoryHeap where
  rawOffset = #{offset struct VkMemoryHeap, flags}