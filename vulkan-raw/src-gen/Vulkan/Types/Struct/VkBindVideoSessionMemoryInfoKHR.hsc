{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkBindVideoSessionMemoryInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBindVideoSessionMemoryInfoKHR" #-} VkBindVideoSessionMemoryInfoKHR =
       VkBindVideoSessionMemoryInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryBindIndex :: #{type uint32_t}
         , memory :: VkDeviceMemory
         , memoryOffset :: VkDeviceSize
         , memorySize :: VkDeviceSize
         }

instance Storable VkBindVideoSessionMemoryInfoKHR where
  sizeOf    _ = #{size      VkBindVideoSessionMemoryInfoKHR}
  alignment _ = #{alignment VkBindVideoSessionMemoryInfoKHR}

  peek ptr = 
    VkBindVideoSessionMemoryInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memoryBindIndex" ptr)
       <*> peek (offset @"memory" ptr)
       <*> peek (offset @"memoryOffset" ptr)
       <*> peek (offset @"memorySize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryBindIndex" ptr val
    pokeField @"memory" ptr val
    pokeField @"memoryOffset" ptr val
    pokeField @"memorySize" ptr val

instance Offset "sType" VkBindVideoSessionMemoryInfoKHR where
  rawOffset = #{offset VkBindVideoSessionMemoryInfoKHR, sType}

instance Offset "pNext" VkBindVideoSessionMemoryInfoKHR where
  rawOffset = #{offset VkBindVideoSessionMemoryInfoKHR, pNext}

instance Offset "memoryBindIndex" VkBindVideoSessionMemoryInfoKHR where
  rawOffset = #{offset VkBindVideoSessionMemoryInfoKHR, memoryBindIndex}

instance Offset "memory" VkBindVideoSessionMemoryInfoKHR where
  rawOffset = #{offset VkBindVideoSessionMemoryInfoKHR, memory}

instance Offset "memoryOffset" VkBindVideoSessionMemoryInfoKHR where
  rawOffset = #{offset VkBindVideoSessionMemoryInfoKHR, memoryOffset}

instance Offset "memorySize" VkBindVideoSessionMemoryInfoKHR where
  rawOffset = #{offset VkBindVideoSessionMemoryInfoKHR, memorySize}

#else

module Vulkan.Types.Struct.VkBindVideoSessionMemoryInfoKHR where

#endif