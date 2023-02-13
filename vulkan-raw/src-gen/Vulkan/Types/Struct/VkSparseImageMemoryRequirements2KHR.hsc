{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_memory_requirements2

module Vulkan.Types.Struct.VkSparseImageMemoryRequirements2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSparseImageMemoryRequirements



data {-# CTYPE "vulkan/vulkan.h" "VkSparseImageMemoryRequirements2KHR" #-} VkSparseImageMemoryRequirements2KHR =
       VkSparseImageMemoryRequirements2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryRequirements :: VkSparseImageMemoryRequirements
         }

instance Storable VkSparseImageMemoryRequirements2KHR where
  sizeOf    _ = #{size      VkSparseImageMemoryRequirements2KHR}
  alignment _ = #{alignment VkSparseImageMemoryRequirements2KHR}

  peek ptr = 
    VkSparseImageMemoryRequirements2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memoryRequirements" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryRequirements" ptr val

instance Offset "sType" VkSparseImageMemoryRequirements2KHR where
  rawOffset = #{offset VkSparseImageMemoryRequirements2KHR, sType}

instance Offset "pNext" VkSparseImageMemoryRequirements2KHR where
  rawOffset = #{offset VkSparseImageMemoryRequirements2KHR, pNext}

instance Offset "memoryRequirements" VkSparseImageMemoryRequirements2KHR where
  rawOffset = #{offset VkSparseImageMemoryRequirements2KHR, memoryRequirements}

#else

module Vulkan.Types.Struct.VkSparseImageMemoryRequirements2KHR where

#endif