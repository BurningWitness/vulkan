{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_get_memory_requirements2) || (VK_NV_ray_tracing)

module Vulkan.Types.Struct.VkMemoryRequirements2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkMemoryRequirements



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryRequirements2KHR" #-} VkMemoryRequirements2KHR =
       VkMemoryRequirements2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryRequirements :: VkMemoryRequirements
         }

instance Storable VkMemoryRequirements2KHR where
  sizeOf    _ = #{size      VkMemoryRequirements2KHR}
  alignment _ = #{alignment VkMemoryRequirements2KHR}

  peek ptr = 
    VkMemoryRequirements2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryRequirements" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryRequirements" ptr val

instance Offset "sType" VkMemoryRequirements2KHR where
  rawOffset = #{offset VkMemoryRequirements2KHR, sType}

instance Offset "pNext" VkMemoryRequirements2KHR where
  rawOffset = #{offset VkMemoryRequirements2KHR, pNext}

instance Offset "memoryRequirements" VkMemoryRequirements2KHR where
  rawOffset = #{offset VkMemoryRequirements2KHR, memoryRequirements}

#else

module Vulkan.Types.Struct.VkMemoryRequirements2KHR where

#endif