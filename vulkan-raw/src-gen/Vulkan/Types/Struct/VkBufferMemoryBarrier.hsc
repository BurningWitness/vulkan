{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkBufferMemoryBarrier where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkAccessFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBufferMemoryBarrier" #-} VkBufferMemoryBarrier =
       VkBufferMemoryBarrier
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcAccessMask :: VkAccessFlags -- ^ Memory accesses from the source of the dependency to synchronize
         , dstAccessMask :: VkAccessFlags -- ^ Memory accesses from the destination of the dependency to synchronize
         , srcQueueFamilyIndex :: #{type uint32_t} -- ^ Queue family to transition ownership from
         , dstQueueFamilyIndex :: #{type uint32_t} -- ^ Queue family to transition ownership to
         , buffer :: VkBuffer -- ^ Buffer to sync
         , offset :: VkDeviceSize -- ^ Offset within the buffer to sync
         , size :: VkDeviceSize -- ^ Amount of bytes to sync
         }

instance Storable VkBufferMemoryBarrier where
  sizeOf    _ = #{size      VkBufferMemoryBarrier}
  alignment _ = #{alignment VkBufferMemoryBarrier}

  peek ptr = 
    VkBufferMemoryBarrier
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcAccessMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstAccessMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcQueueFamilyIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstQueueFamilyIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"buffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"offset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"size" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcAccessMask" ptr val
    pokeField @"dstAccessMask" ptr val
    pokeField @"srcQueueFamilyIndex" ptr val
    pokeField @"dstQueueFamilyIndex" ptr val
    pokeField @"buffer" ptr val
    pokeField @"offset" ptr val
    pokeField @"size" ptr val

instance Offset "sType" VkBufferMemoryBarrier where
  rawOffset = #{offset VkBufferMemoryBarrier, sType}

instance Offset "pNext" VkBufferMemoryBarrier where
  rawOffset = #{offset VkBufferMemoryBarrier, pNext}

instance Offset "srcAccessMask" VkBufferMemoryBarrier where
  rawOffset = #{offset VkBufferMemoryBarrier, srcAccessMask}

instance Offset "dstAccessMask" VkBufferMemoryBarrier where
  rawOffset = #{offset VkBufferMemoryBarrier, dstAccessMask}

instance Offset "srcQueueFamilyIndex" VkBufferMemoryBarrier where
  rawOffset = #{offset VkBufferMemoryBarrier, srcQueueFamilyIndex}

instance Offset "dstQueueFamilyIndex" VkBufferMemoryBarrier where
  rawOffset = #{offset VkBufferMemoryBarrier, dstQueueFamilyIndex}

instance Offset "buffer" VkBufferMemoryBarrier where
  rawOffset = #{offset VkBufferMemoryBarrier, buffer}

instance Offset "offset" VkBufferMemoryBarrier where
  rawOffset = #{offset VkBufferMemoryBarrier, offset}

instance Offset "size" VkBufferMemoryBarrier where
  rawOffset = #{offset VkBufferMemoryBarrier, size}