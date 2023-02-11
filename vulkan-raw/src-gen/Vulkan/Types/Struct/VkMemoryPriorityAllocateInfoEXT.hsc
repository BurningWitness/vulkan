{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_memory_priority

module Vulkan.Types.Struct.VkMemoryPriorityAllocateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryPriorityAllocateInfoEXT" #-} VkMemoryPriorityAllocateInfoEXT =
       VkMemoryPriorityAllocateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , priority :: #{type float}
         }

instance Storable VkMemoryPriorityAllocateInfoEXT where
  sizeOf    _ = #{size      struct VkMemoryPriorityAllocateInfoEXT}
  alignment _ = #{alignment struct VkMemoryPriorityAllocateInfoEXT}

  peek ptr = 
    VkMemoryPriorityAllocateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"priority" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"priority" ptr val

instance Offset "sType" VkMemoryPriorityAllocateInfoEXT where
  rawOffset = #{offset struct VkMemoryPriorityAllocateInfoEXT, sType}

instance Offset "pNext" VkMemoryPriorityAllocateInfoEXT where
  rawOffset = #{offset struct VkMemoryPriorityAllocateInfoEXT, pNext}

instance Offset "priority" VkMemoryPriorityAllocateInfoEXT where
  rawOffset = #{offset struct VkMemoryPriorityAllocateInfoEXT, priority}

#else

module Vulkan.Types.Struct.VkMemoryPriorityAllocateInfoEXT where

#endif