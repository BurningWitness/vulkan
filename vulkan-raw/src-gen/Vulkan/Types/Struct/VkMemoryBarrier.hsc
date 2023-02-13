{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkMemoryBarrier where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAccessFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryBarrier" #-} VkMemoryBarrier =
       VkMemoryBarrier
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcAccessMask :: VkAccessFlags -- ^ Memory accesses from the source of the dependency to synchronize
         , dstAccessMask :: VkAccessFlags -- ^ Memory accesses from the destination of the dependency to synchronize
         }

instance Storable VkMemoryBarrier where
  sizeOf    _ = #{size      VkMemoryBarrier}
  alignment _ = #{alignment VkMemoryBarrier}

  peek ptr = 
    VkMemoryBarrier
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcAccessMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstAccessMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcAccessMask" ptr val
    pokeField @"dstAccessMask" ptr val

instance Offset "sType" VkMemoryBarrier where
  rawOffset = #{offset VkMemoryBarrier, sType}

instance Offset "pNext" VkMemoryBarrier where
  rawOffset = #{offset VkMemoryBarrier, pNext}

instance Offset "srcAccessMask" VkMemoryBarrier where
  rawOffset = #{offset VkMemoryBarrier, srcAccessMask}

instance Offset "dstAccessMask" VkMemoryBarrier where
  rawOffset = #{offset VkMemoryBarrier, dstAccessMask}