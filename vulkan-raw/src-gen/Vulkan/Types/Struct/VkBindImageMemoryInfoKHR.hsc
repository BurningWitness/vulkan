{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_bind_memory2

module Vulkan.Types.Struct.VkBindImageMemoryInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBindImageMemoryInfoKHR" #-} VkBindImageMemoryInfoKHR =
       VkBindImageMemoryInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image :: VkImage
         , memory :: VkDeviceMemory
         , memoryOffset :: VkDeviceSize
         }

instance Storable VkBindImageMemoryInfoKHR where
  sizeOf    _ = #{size      VkBindImageMemoryInfoKHR}
  alignment _ = #{alignment VkBindImageMemoryInfoKHR}

  peek ptr = 
    VkBindImageMemoryInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"image" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memory" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryOffset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val
    pokeField @"memory" ptr val
    pokeField @"memoryOffset" ptr val

instance Offset "sType" VkBindImageMemoryInfoKHR where
  rawOffset = #{offset VkBindImageMemoryInfoKHR, sType}

instance Offset "pNext" VkBindImageMemoryInfoKHR where
  rawOffset = #{offset VkBindImageMemoryInfoKHR, pNext}

instance Offset "image" VkBindImageMemoryInfoKHR where
  rawOffset = #{offset VkBindImageMemoryInfoKHR, image}

instance Offset "memory" VkBindImageMemoryInfoKHR where
  rawOffset = #{offset VkBindImageMemoryInfoKHR, memory}

instance Offset "memoryOffset" VkBindImageMemoryInfoKHR where
  rawOffset = #{offset VkBindImageMemoryInfoKHR, memoryOffset}

#else

module Vulkan.Types.Struct.VkBindImageMemoryInfoKHR where

#endif