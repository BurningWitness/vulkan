{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkSparseImageMemoryRequirements2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSparseImageMemoryRequirements



data {-# CTYPE "vulkan/vulkan.h" "VkSparseImageMemoryRequirements2" #-} VkSparseImageMemoryRequirements2 =
       VkSparseImageMemoryRequirements2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryRequirements :: VkSparseImageMemoryRequirements
         }

instance Storable VkSparseImageMemoryRequirements2 where
  sizeOf    _ = #{size      struct VkSparseImageMemoryRequirements2}
  alignment _ = #{alignment struct VkSparseImageMemoryRequirements2}

  peek ptr = 
    VkSparseImageMemoryRequirements2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memoryRequirements" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryRequirements" ptr val

instance Offset "sType" VkSparseImageMemoryRequirements2 where
  rawOffset = #{offset struct VkSparseImageMemoryRequirements2, sType}

instance Offset "pNext" VkSparseImageMemoryRequirements2 where
  rawOffset = #{offset struct VkSparseImageMemoryRequirements2, pNext}

instance Offset "memoryRequirements" VkSparseImageMemoryRequirements2 where
  rawOffset = #{offset struct VkSparseImageMemoryRequirements2, memoryRequirements}

#else

module Vulkan.Types.Struct.VkSparseImageMemoryRequirements2 where

#endif