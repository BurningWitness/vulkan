{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkBufferMemoryBarrier}
  alignment _ = #{alignment struct VkBufferMemoryBarrier}

  peek ptr = 
    VkBufferMemoryBarrier
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcAccessMask" ptr)
       <*> peek (offset @"dstAccessMask" ptr)
       <*> peek (offset @"srcQueueFamilyIndex" ptr)
       <*> peek (offset @"dstQueueFamilyIndex" ptr)
       <*> peek (offset @"buffer" ptr)
       <*> peek (offset @"offset" ptr)
       <*> peek (offset @"size" ptr)

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
  rawOffset = #{offset struct VkBufferMemoryBarrier, sType}

instance Offset "pNext" VkBufferMemoryBarrier where
  rawOffset = #{offset struct VkBufferMemoryBarrier, pNext}

instance Offset "srcAccessMask" VkBufferMemoryBarrier where
  rawOffset = #{offset struct VkBufferMemoryBarrier, srcAccessMask}

instance Offset "dstAccessMask" VkBufferMemoryBarrier where
  rawOffset = #{offset struct VkBufferMemoryBarrier, dstAccessMask}

instance Offset "srcQueueFamilyIndex" VkBufferMemoryBarrier where
  rawOffset = #{offset struct VkBufferMemoryBarrier, srcQueueFamilyIndex}

instance Offset "dstQueueFamilyIndex" VkBufferMemoryBarrier where
  rawOffset = #{offset struct VkBufferMemoryBarrier, dstQueueFamilyIndex}

instance Offset "buffer" VkBufferMemoryBarrier where
  rawOffset = #{offset struct VkBufferMemoryBarrier, buffer}

instance Offset "offset" VkBufferMemoryBarrier where
  rawOffset = #{offset struct VkBufferMemoryBarrier, offset}

instance Offset "size" VkBufferMemoryBarrier where
  rawOffset = #{offset struct VkBufferMemoryBarrier, size}