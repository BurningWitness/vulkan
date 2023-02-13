{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkMemoryRequirements2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkMemoryRequirements



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryRequirements2" #-} VkMemoryRequirements2 =
       VkMemoryRequirements2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryRequirements :: VkMemoryRequirements
         }

instance Storable VkMemoryRequirements2 where
  sizeOf    _ = #{size      VkMemoryRequirements2}
  alignment _ = #{alignment VkMemoryRequirements2}

  peek ptr = 
    VkMemoryRequirements2
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryRequirements" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryRequirements" ptr val

instance Offset "sType" VkMemoryRequirements2 where
  rawOffset = #{offset VkMemoryRequirements2, sType}

instance Offset "pNext" VkMemoryRequirements2 where
  rawOffset = #{offset VkMemoryRequirements2, pNext}

instance Offset "memoryRequirements" VkMemoryRequirements2 where
  rawOffset = #{offset VkMemoryRequirements2, memoryRequirements}

#else

module Vulkan.Types.Struct.VkMemoryRequirements2 where

#endif