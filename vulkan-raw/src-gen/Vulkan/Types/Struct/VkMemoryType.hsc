{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkMemoryType where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkMemoryPropertyFlags



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryType" #-} VkMemoryType =
       VkMemoryType
         { propertyFlags :: VkMemoryPropertyFlags -- ^ Memory properties of this memory type
         , heapIndex :: #{type uint32_t} -- ^ Index of the memory heap allocations of this memory type are taken from
         }

instance Storable VkMemoryType where
  sizeOf    _ = #{size      struct VkMemoryType}
  alignment _ = #{alignment struct VkMemoryType}

  peek ptr = 
    VkMemoryType
       <$> peek (offset @"propertyFlags" ptr)
       <*> peek (offset @"heapIndex" ptr)

  poke ptr val = do
    pokeField @"propertyFlags" ptr val
    pokeField @"heapIndex" ptr val

instance Offset "propertyFlags" VkMemoryType where
  rawOffset = #{offset struct VkMemoryType, propertyFlags}

instance Offset "heapIndex" VkMemoryType where
  rawOffset = #{offset struct VkMemoryType, heapIndex}