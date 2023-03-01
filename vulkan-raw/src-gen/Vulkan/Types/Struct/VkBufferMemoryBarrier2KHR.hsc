{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Struct.VkBufferMemoryBarrier2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkAccessFlags2
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBufferMemoryBarrier2KHR" #-} VkBufferMemoryBarrier2KHR =
       VkBufferMemoryBarrier2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcStageMask :: VkPipelineStageFlags2
         , srcAccessMask :: VkAccessFlags2
         , dstStageMask :: VkPipelineStageFlags2
         , dstAccessMask :: VkAccessFlags2
         , srcQueueFamilyIndex :: #{type uint32_t}
         , dstQueueFamilyIndex :: #{type uint32_t}
         , buffer :: VkBuffer
         , offset :: VkDeviceSize
         , size :: VkDeviceSize
         }

instance Storable VkBufferMemoryBarrier2KHR where
  sizeOf    _ = #{size      VkBufferMemoryBarrier2KHR}
  alignment _ = #{alignment VkBufferMemoryBarrier2KHR}

  peek ptr = 
    VkBufferMemoryBarrier2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcStageMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcAccessMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstStageMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstAccessMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcQueueFamilyIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstQueueFamilyIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"buffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"offset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"size" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcStageMask" ptr val
    pokeField @"srcAccessMask" ptr val
    pokeField @"dstStageMask" ptr val
    pokeField @"dstAccessMask" ptr val
    pokeField @"srcQueueFamilyIndex" ptr val
    pokeField @"dstQueueFamilyIndex" ptr val
    pokeField @"buffer" ptr val
    pokeField @"offset" ptr val
    pokeField @"size" ptr val

instance Offset "sType" VkBufferMemoryBarrier2KHR where
  rawOffset = #{offset VkBufferMemoryBarrier2KHR, sType}

instance Offset "pNext" VkBufferMemoryBarrier2KHR where
  rawOffset = #{offset VkBufferMemoryBarrier2KHR, pNext}

instance Offset "srcStageMask" VkBufferMemoryBarrier2KHR where
  rawOffset = #{offset VkBufferMemoryBarrier2KHR, srcStageMask}

instance Offset "srcAccessMask" VkBufferMemoryBarrier2KHR where
  rawOffset = #{offset VkBufferMemoryBarrier2KHR, srcAccessMask}

instance Offset "dstStageMask" VkBufferMemoryBarrier2KHR where
  rawOffset = #{offset VkBufferMemoryBarrier2KHR, dstStageMask}

instance Offset "dstAccessMask" VkBufferMemoryBarrier2KHR where
  rawOffset = #{offset VkBufferMemoryBarrier2KHR, dstAccessMask}

instance Offset "srcQueueFamilyIndex" VkBufferMemoryBarrier2KHR where
  rawOffset = #{offset VkBufferMemoryBarrier2KHR, srcQueueFamilyIndex}

instance Offset "dstQueueFamilyIndex" VkBufferMemoryBarrier2KHR where
  rawOffset = #{offset VkBufferMemoryBarrier2KHR, dstQueueFamilyIndex}

instance Offset "buffer" VkBufferMemoryBarrier2KHR where
  rawOffset = #{offset VkBufferMemoryBarrier2KHR, buffer}

instance Offset "offset" VkBufferMemoryBarrier2KHR where
  rawOffset = #{offset VkBufferMemoryBarrier2KHR, offset}

instance Offset "size" VkBufferMemoryBarrier2KHR where
  rawOffset = #{offset VkBufferMemoryBarrier2KHR, size}

#else

module Vulkan.Types.Struct.VkBufferMemoryBarrier2KHR where

#endif