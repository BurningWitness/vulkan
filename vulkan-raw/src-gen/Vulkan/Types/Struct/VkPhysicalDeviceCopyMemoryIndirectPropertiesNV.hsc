{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_copy_memory_indirect

module Vulkan.Types.Struct.VkPhysicalDeviceCopyMemoryIndirectPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkQueueFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceCopyMemoryIndirectPropertiesNV" #-} VkPhysicalDeviceCopyMemoryIndirectPropertiesNV =
       VkPhysicalDeviceCopyMemoryIndirectPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , supportedQueues :: VkQueueFlags -- ^ Bitfield of which queues are supported for indirect copy
         }

instance Storable VkPhysicalDeviceCopyMemoryIndirectPropertiesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceCopyMemoryIndirectPropertiesNV}
  alignment _ = #{alignment VkPhysicalDeviceCopyMemoryIndirectPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceCopyMemoryIndirectPropertiesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportedQueues" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"supportedQueues" ptr val

instance Offset "sType" VkPhysicalDeviceCopyMemoryIndirectPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceCopyMemoryIndirectPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceCopyMemoryIndirectPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceCopyMemoryIndirectPropertiesNV, pNext}

instance Offset "supportedQueues" VkPhysicalDeviceCopyMemoryIndirectPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceCopyMemoryIndirectPropertiesNV, supportedQueues}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceCopyMemoryIndirectPropertiesNV where

#endif