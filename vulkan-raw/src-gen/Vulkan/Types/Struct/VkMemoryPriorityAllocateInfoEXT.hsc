{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkMemoryPriorityAllocateInfoEXT}
  alignment _ = #{alignment VkMemoryPriorityAllocateInfoEXT}

  peek ptr = 
    VkMemoryPriorityAllocateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"priority" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"priority" ptr val

instance Offset "sType" VkMemoryPriorityAllocateInfoEXT where
  rawOffset = #{offset VkMemoryPriorityAllocateInfoEXT, sType}

instance Offset "pNext" VkMemoryPriorityAllocateInfoEXT where
  rawOffset = #{offset VkMemoryPriorityAllocateInfoEXT, pNext}

instance Offset "priority" VkMemoryPriorityAllocateInfoEXT where
  rawOffset = #{offset VkMemoryPriorityAllocateInfoEXT, priority}

#else

module Vulkan.Types.Struct.VkMemoryPriorityAllocateInfoEXT where

#endif