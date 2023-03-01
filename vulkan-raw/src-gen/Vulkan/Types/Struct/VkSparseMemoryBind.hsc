{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSparseMemoryBind where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkSparseMemoryBindFlags
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSparseMemoryBind" #-} VkSparseMemoryBind =
       VkSparseMemoryBind
         { resourceOffset :: VkDeviceSize -- ^ Specified in bytes
         , size :: VkDeviceSize -- ^ Specified in bytes
         , memory :: VkDeviceMemory
         , memoryOffset :: VkDeviceSize -- ^ Specified in bytes
         , flags :: VkSparseMemoryBindFlags
         }

instance Storable VkSparseMemoryBind where
  sizeOf    _ = #{size      VkSparseMemoryBind}
  alignment _ = #{alignment VkSparseMemoryBind}

  peek ptr = 
    VkSparseMemoryBind
       <$> peek (Foreign.Storable.Offset.offset @"resourceOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"size" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memory" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"resourceOffset" ptr val
    pokeField @"size" ptr val
    pokeField @"memory" ptr val
    pokeField @"memoryOffset" ptr val
    pokeField @"flags" ptr val

instance Offset "resourceOffset" VkSparseMemoryBind where
  rawOffset = #{offset VkSparseMemoryBind, resourceOffset}

instance Offset "size" VkSparseMemoryBind where
  rawOffset = #{offset VkSparseMemoryBind, size}

instance Offset "memory" VkSparseMemoryBind where
  rawOffset = #{offset VkSparseMemoryBind, memory}

instance Offset "memoryOffset" VkSparseMemoryBind where
  rawOffset = #{offset VkSparseMemoryBind, memoryOffset}

instance Offset "flags" VkSparseMemoryBind where
  rawOffset = #{offset VkSparseMemoryBind, flags}