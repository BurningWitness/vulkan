{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkDependencyInfo where

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



data {-# CTYPE "vulkan/vulkan.h" "VkDependencyInfo" #-} VkDependencyInfo =
       VkDependencyInfo
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

instance Storable VkDependencyInfo where
  sizeOf    _ = #{size      struct VkDependencyInfo}
  alignment _ = #{alignment struct VkDependencyInfo}

  peek ptr = 
    VkDependencyInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"dependencyFlags" ptr)
       <*> peek (offset @"memoryBarrierCount" ptr)
       <*> peek (offset @"pMemoryBarriers" ptr)
       <*> peek (offset @"bufferMemoryBarrierCount" ptr)
       <*> peek (offset @"pBufferMemoryBarriers" ptr)
       <*> peek (offset @"imageMemoryBarrierCount" ptr)
       <*> peek (offset @"pImageMemoryBarriers" ptr)

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

instance Offset "sType" VkDependencyInfo where
  rawOffset = #{offset struct VkDependencyInfo, sType}

instance Offset "pNext" VkDependencyInfo where
  rawOffset = #{offset struct VkDependencyInfo, pNext}

instance Offset "dependencyFlags" VkDependencyInfo where
  rawOffset = #{offset struct VkDependencyInfo, dependencyFlags}

instance Offset "memoryBarrierCount" VkDependencyInfo where
  rawOffset = #{offset struct VkDependencyInfo, memoryBarrierCount}

instance Offset "pMemoryBarriers" VkDependencyInfo where
  rawOffset = #{offset struct VkDependencyInfo, pMemoryBarriers}

instance Offset "bufferMemoryBarrierCount" VkDependencyInfo where
  rawOffset = #{offset struct VkDependencyInfo, bufferMemoryBarrierCount}

instance Offset "pBufferMemoryBarriers" VkDependencyInfo where
  rawOffset = #{offset struct VkDependencyInfo, pBufferMemoryBarriers}

instance Offset "imageMemoryBarrierCount" VkDependencyInfo where
  rawOffset = #{offset struct VkDependencyInfo, imageMemoryBarrierCount}

instance Offset "pImageMemoryBarriers" VkDependencyInfo where
  rawOffset = #{offset struct VkDependencyInfo, pImageMemoryBarriers}

#else

module Vulkan.Types.Struct.VkDependencyInfo where

#endif