{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkBufferMemoryBarrier2 where

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



data {-# CTYPE "vulkan/vulkan.h" "VkBufferMemoryBarrier2" #-} VkBufferMemoryBarrier2 =
       VkBufferMemoryBarrier2
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

instance Storable VkBufferMemoryBarrier2 where
  sizeOf    _ = #{size      VkBufferMemoryBarrier2}
  alignment _ = #{alignment VkBufferMemoryBarrier2}

  peek ptr = 
    VkBufferMemoryBarrier2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcStageMask" ptr)
       <*> peek (offset @"srcAccessMask" ptr)
       <*> peek (offset @"dstStageMask" ptr)
       <*> peek (offset @"dstAccessMask" ptr)
       <*> peek (offset @"srcQueueFamilyIndex" ptr)
       <*> peek (offset @"dstQueueFamilyIndex" ptr)
       <*> peek (offset @"buffer" ptr)
       <*> peek (offset @"offset" ptr)
       <*> peek (offset @"size" ptr)

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

instance Offset "sType" VkBufferMemoryBarrier2 where
  rawOffset = #{offset VkBufferMemoryBarrier2, sType}

instance Offset "pNext" VkBufferMemoryBarrier2 where
  rawOffset = #{offset VkBufferMemoryBarrier2, pNext}

instance Offset "srcStageMask" VkBufferMemoryBarrier2 where
  rawOffset = #{offset VkBufferMemoryBarrier2, srcStageMask}

instance Offset "srcAccessMask" VkBufferMemoryBarrier2 where
  rawOffset = #{offset VkBufferMemoryBarrier2, srcAccessMask}

instance Offset "dstStageMask" VkBufferMemoryBarrier2 where
  rawOffset = #{offset VkBufferMemoryBarrier2, dstStageMask}

instance Offset "dstAccessMask" VkBufferMemoryBarrier2 where
  rawOffset = #{offset VkBufferMemoryBarrier2, dstAccessMask}

instance Offset "srcQueueFamilyIndex" VkBufferMemoryBarrier2 where
  rawOffset = #{offset VkBufferMemoryBarrier2, srcQueueFamilyIndex}

instance Offset "dstQueueFamilyIndex" VkBufferMemoryBarrier2 where
  rawOffset = #{offset VkBufferMemoryBarrier2, dstQueueFamilyIndex}

instance Offset "buffer" VkBufferMemoryBarrier2 where
  rawOffset = #{offset VkBufferMemoryBarrier2, buffer}

instance Offset "offset" VkBufferMemoryBarrier2 where
  rawOffset = #{offset VkBufferMemoryBarrier2, offset}

instance Offset "size" VkBufferMemoryBarrier2 where
  rawOffset = #{offset VkBufferMemoryBarrier2, size}

#else

module Vulkan.Types.Struct.VkBufferMemoryBarrier2 where

#endif