{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_bind_memory2

module Vulkan.Types.Struct.VkBindBufferMemoryInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBindBufferMemoryInfoKHR" #-} VkBindBufferMemoryInfoKHR =
       VkBindBufferMemoryInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , buffer :: VkBuffer
         , memory :: VkDeviceMemory
         , memoryOffset :: VkDeviceSize
         }

instance Storable VkBindBufferMemoryInfoKHR where
  sizeOf    _ = #{size      VkBindBufferMemoryInfoKHR}
  alignment _ = #{alignment VkBindBufferMemoryInfoKHR}

  peek ptr = 
    VkBindBufferMemoryInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"buffer" ptr)
       <*> peek (offset @"memory" ptr)
       <*> peek (offset @"memoryOffset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"buffer" ptr val
    pokeField @"memory" ptr val
    pokeField @"memoryOffset" ptr val

instance Offset "sType" VkBindBufferMemoryInfoKHR where
  rawOffset = #{offset VkBindBufferMemoryInfoKHR, sType}

instance Offset "pNext" VkBindBufferMemoryInfoKHR where
  rawOffset = #{offset VkBindBufferMemoryInfoKHR, pNext}

instance Offset "buffer" VkBindBufferMemoryInfoKHR where
  rawOffset = #{offset VkBindBufferMemoryInfoKHR, buffer}

instance Offset "memory" VkBindBufferMemoryInfoKHR where
  rawOffset = #{offset VkBindBufferMemoryInfoKHR, memory}

instance Offset "memoryOffset" VkBindBufferMemoryInfoKHR where
  rawOffset = #{offset VkBindBufferMemoryInfoKHR, memoryOffset}

#else

module Vulkan.Types.Struct.VkBindBufferMemoryInfoKHR where

#endif