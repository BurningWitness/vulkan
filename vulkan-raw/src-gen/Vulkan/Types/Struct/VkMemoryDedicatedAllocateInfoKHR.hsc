{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dedicated_allocation

module Vulkan.Types.Struct.VkMemoryDedicatedAllocateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryDedicatedAllocateInfoKHR" #-} VkMemoryDedicatedAllocateInfoKHR =
       VkMemoryDedicatedAllocateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image :: VkImage -- ^ Image that this allocation will be bound to
         , buffer :: VkBuffer -- ^ Buffer that this allocation will be bound to
         }

instance Storable VkMemoryDedicatedAllocateInfoKHR where
  sizeOf    _ = #{size      VkMemoryDedicatedAllocateInfoKHR}
  alignment _ = #{alignment VkMemoryDedicatedAllocateInfoKHR}

  peek ptr = 
    VkMemoryDedicatedAllocateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"image" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"buffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val
    pokeField @"buffer" ptr val

instance Offset "sType" VkMemoryDedicatedAllocateInfoKHR where
  rawOffset = #{offset VkMemoryDedicatedAllocateInfoKHR, sType}

instance Offset "pNext" VkMemoryDedicatedAllocateInfoKHR where
  rawOffset = #{offset VkMemoryDedicatedAllocateInfoKHR, pNext}

instance Offset "image" VkMemoryDedicatedAllocateInfoKHR where
  rawOffset = #{offset VkMemoryDedicatedAllocateInfoKHR, image}

instance Offset "buffer" VkMemoryDedicatedAllocateInfoKHR where
  rawOffset = #{offset VkMemoryDedicatedAllocateInfoKHR, buffer}

#else

module Vulkan.Types.Struct.VkMemoryDedicatedAllocateInfoKHR where

#endif