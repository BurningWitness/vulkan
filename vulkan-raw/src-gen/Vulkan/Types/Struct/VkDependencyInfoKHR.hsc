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

module Vulkan.Types.Struct.VkDependencyInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDependencyFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkBufferMemoryBarrier2
import Vulkan.Types.Struct.VkImageMemoryBarrier2
import Vulkan.Types.Struct.VkMemoryBarrier2



data {-# CTYPE "vulkan/vulkan.h" "VkDependencyInfoKHR" #-} VkDependencyInfoKHR =
       VkDependencyInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , dependencyFlags :: VkDependencyFlags
         , memoryBarrierCount :: #{type uint32_t}
         , pMemoryBarriers :: Ptr VkMemoryBarrier2
         , bufferMemoryBarrierCount :: #{type uint32_t}
         , pBufferMemoryBarriers :: Ptr VkBufferMemoryBarrier2
         , imageMemoryBarrierCount :: #{type uint32_t}
         , pImageMemoryBarriers :: Ptr VkImageMemoryBarrier2
         }

instance Storable VkDependencyInfoKHR where
  sizeOf    _ = #{size      VkDependencyInfoKHR}
  alignment _ = #{alignment VkDependencyInfoKHR}

  peek ptr = 
    VkDependencyInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dependencyFlags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryBarrierCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pMemoryBarriers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferMemoryBarrierCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pBufferMemoryBarriers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageMemoryBarrierCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pImageMemoryBarriers" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dependencyFlags" ptr val
    pokeField @"memoryBarrierCount" ptr val
    pokeField @"pMemoryBarriers" ptr val
    pokeField @"bufferMemoryBarrierCount" ptr val
    pokeField @"pBufferMemoryBarriers" ptr val
    pokeField @"imageMemoryBarrierCount" ptr val
    pokeField @"pImageMemoryBarriers" ptr val

instance Offset "sType" VkDependencyInfoKHR where
  rawOffset = #{offset VkDependencyInfoKHR, sType}

instance Offset "pNext" VkDependencyInfoKHR where
  rawOffset = #{offset VkDependencyInfoKHR, pNext}

instance Offset "dependencyFlags" VkDependencyInfoKHR where
  rawOffset = #{offset VkDependencyInfoKHR, dependencyFlags}

instance Offset "memoryBarrierCount" VkDependencyInfoKHR where
  rawOffset = #{offset VkDependencyInfoKHR, memoryBarrierCount}

instance Offset "pMemoryBarriers" VkDependencyInfoKHR where
  rawOffset = #{offset VkDependencyInfoKHR, pMemoryBarriers}

instance Offset "bufferMemoryBarrierCount" VkDependencyInfoKHR where
  rawOffset = #{offset VkDependencyInfoKHR, bufferMemoryBarrierCount}

instance Offset "pBufferMemoryBarriers" VkDependencyInfoKHR where
  rawOffset = #{offset VkDependencyInfoKHR, pBufferMemoryBarriers}

instance Offset "imageMemoryBarrierCount" VkDependencyInfoKHR where
  rawOffset = #{offset VkDependencyInfoKHR, imageMemoryBarrierCount}

instance Offset "pImageMemoryBarriers" VkDependencyInfoKHR where
  rawOffset = #{offset VkDependencyInfoKHR, pImageMemoryBarriers}

#else

module Vulkan.Types.Struct.VkDependencyInfoKHR where

#endif