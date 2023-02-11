{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_dedicated_allocation

module Vulkan.Types.Struct.VkDedicatedAllocationMemoryAllocateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDedicatedAllocationMemoryAllocateInfoNV" #-} VkDedicatedAllocationMemoryAllocateInfoNV =
       VkDedicatedAllocationMemoryAllocateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image :: VkImage -- ^ Image that this allocation will be bound to
         , buffer :: VkBuffer -- ^ Buffer that this allocation will be bound to
         }

instance Storable VkDedicatedAllocationMemoryAllocateInfoNV where
  sizeOf    _ = #{size      struct VkDedicatedAllocationMemoryAllocateInfoNV}
  alignment _ = #{alignment struct VkDedicatedAllocationMemoryAllocateInfoNV}

  peek ptr = 
    VkDedicatedAllocationMemoryAllocateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"image" ptr)
       <*> peek (offset @"buffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val
    pokeField @"buffer" ptr val

instance Offset "sType" VkDedicatedAllocationMemoryAllocateInfoNV where
  rawOffset = #{offset struct VkDedicatedAllocationMemoryAllocateInfoNV, sType}

instance Offset "pNext" VkDedicatedAllocationMemoryAllocateInfoNV where
  rawOffset = #{offset struct VkDedicatedAllocationMemoryAllocateInfoNV, pNext}

instance Offset "image" VkDedicatedAllocationMemoryAllocateInfoNV where
  rawOffset = #{offset struct VkDedicatedAllocationMemoryAllocateInfoNV, image}

instance Offset "buffer" VkDedicatedAllocationMemoryAllocateInfoNV where
  rawOffset = #{offset struct VkDedicatedAllocationMemoryAllocateInfoNV, buffer}

#else

module Vulkan.Types.Struct.VkDedicatedAllocationMemoryAllocateInfoNV where

#endif