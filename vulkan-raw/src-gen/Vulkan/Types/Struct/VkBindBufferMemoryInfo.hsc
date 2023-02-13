{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkBindBufferMemoryInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBindBufferMemoryInfo" #-} VkBindBufferMemoryInfo =
       VkBindBufferMemoryInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , buffer :: VkBuffer
         , memory :: VkDeviceMemory
         , memoryOffset :: VkDeviceSize
         }

instance Storable VkBindBufferMemoryInfo where
  sizeOf    _ = #{size      VkBindBufferMemoryInfo}
  alignment _ = #{alignment VkBindBufferMemoryInfo}

  peek ptr = 
    VkBindBufferMemoryInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"buffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memory" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryOffset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"buffer" ptr val
    pokeField @"memory" ptr val
    pokeField @"memoryOffset" ptr val

instance Offset "sType" VkBindBufferMemoryInfo where
  rawOffset = #{offset VkBindBufferMemoryInfo, sType}

instance Offset "pNext" VkBindBufferMemoryInfo where
  rawOffset = #{offset VkBindBufferMemoryInfo, pNext}

instance Offset "buffer" VkBindBufferMemoryInfo where
  rawOffset = #{offset VkBindBufferMemoryInfo, buffer}

instance Offset "memory" VkBindBufferMemoryInfo where
  rawOffset = #{offset VkBindBufferMemoryInfo, memory}

instance Offset "memoryOffset" VkBindBufferMemoryInfo where
  rawOffset = #{offset VkBindBufferMemoryInfo, memoryOffset}

#else

module Vulkan.Types.Struct.VkBindBufferMemoryInfo where

#endif