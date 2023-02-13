{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkMemoryHeap
import Vulkan.Types.Struct.VkMemoryType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMemoryProperties" #-} VkPhysicalDeviceMemoryProperties =
       VkPhysicalDeviceMemoryProperties
         { memoryTypeCount :: #{type uint32_t}
         , memoryTypes :: VkMemoryType
         , memoryHeapCount :: #{type uint32_t}
         , memoryHeaps :: VkMemoryHeap
         }

instance Storable VkPhysicalDeviceMemoryProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceMemoryProperties}
  alignment _ = #{alignment VkPhysicalDeviceMemoryProperties}

  peek ptr = 
    VkPhysicalDeviceMemoryProperties
       <$> peek (offset @"memoryTypeCount" ptr)
       <*> peek (offset @"memoryTypes" ptr)
       <*> peek (offset @"memoryHeapCount" ptr)
       <*> peek (offset @"memoryHeaps" ptr)

  poke ptr val = do
    pokeField @"memoryTypeCount" ptr val
    pokeField @"memoryTypes" ptr val
    pokeField @"memoryHeapCount" ptr val
    pokeField @"memoryHeaps" ptr val

instance Offset "memoryTypeCount" VkPhysicalDeviceMemoryProperties where
  rawOffset = #{offset VkPhysicalDeviceMemoryProperties, memoryTypeCount}

instance Offset "memoryTypes" VkPhysicalDeviceMemoryProperties where
  rawOffset = #{offset VkPhysicalDeviceMemoryProperties, memoryTypes}

instance Offset "memoryHeapCount" VkPhysicalDeviceMemoryProperties where
  rawOffset = #{offset VkPhysicalDeviceMemoryProperties, memoryHeapCount}

instance Offset "memoryHeaps" VkPhysicalDeviceMemoryProperties where
  rawOffset = #{offset VkPhysicalDeviceMemoryProperties, memoryHeaps}