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
  sizeOf    _ = #{size      struct VkPhysicalDeviceCopyMemoryIndirectPropertiesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceCopyMemoryIndirectPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceCopyMemoryIndirectPropertiesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"supportedQueues" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"supportedQueues" ptr val

instance Offset "sType" VkPhysicalDeviceCopyMemoryIndirectPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceCopyMemoryIndirectPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceCopyMemoryIndirectPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceCopyMemoryIndirectPropertiesNV, pNext}

instance Offset "supportedQueues" VkPhysicalDeviceCopyMemoryIndirectPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceCopyMemoryIndirectPropertiesNV, supportedQueues}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceCopyMemoryIndirectPropertiesNV where

#endif