{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSparseImageMemoryBind where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkSparseMemoryBindFlags
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkImageSubresource
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkSparseImageMemoryBind" #-} VkSparseImageMemoryBind =
       VkSparseImageMemoryBind
         { subresource :: VkImageSubresource
         , offset :: VkOffset3D
         , extent :: VkExtent3D
         , memory :: VkDeviceMemory
         , memoryOffset :: VkDeviceSize -- ^ Specified in bytes
         , flags :: VkSparseMemoryBindFlags
         }

instance Storable VkSparseImageMemoryBind where
  sizeOf    _ = #{size      VkSparseImageMemoryBind}
  alignment _ = #{alignment VkSparseImageMemoryBind}

  peek ptr = 
    VkSparseImageMemoryBind
       <$> peek (Foreign.Storable.Offset.offset @"subresource" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"offset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memory" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"subresource" ptr val
    pokeField @"offset" ptr val
    pokeField @"extent" ptr val
    pokeField @"memory" ptr val
    pokeField @"memoryOffset" ptr val
    pokeField @"flags" ptr val

instance Offset "subresource" VkSparseImageMemoryBind where
  rawOffset = #{offset VkSparseImageMemoryBind, subresource}

instance Offset "offset" VkSparseImageMemoryBind where
  rawOffset = #{offset VkSparseImageMemoryBind, offset}

instance Offset "extent" VkSparseImageMemoryBind where
  rawOffset = #{offset VkSparseImageMemoryBind, extent}

instance Offset "memory" VkSparseImageMemoryBind where
  rawOffset = #{offset VkSparseImageMemoryBind, memory}

instance Offset "memoryOffset" VkSparseImageMemoryBind where
  rawOffset = #{offset VkSparseImageMemoryBind, memoryOffset}

instance Offset "flags" VkSparseImageMemoryBind where
  rawOffset = #{offset VkSparseImageMemoryBind, flags}