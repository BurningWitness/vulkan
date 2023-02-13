{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_memory_priority

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryPriorityFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMemoryPriorityFeaturesEXT" #-} VkPhysicalDeviceMemoryPriorityFeaturesEXT =
       VkPhysicalDeviceMemoryPriorityFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryPriority :: VkBool32
         }

instance Storable VkPhysicalDeviceMemoryPriorityFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceMemoryPriorityFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceMemoryPriorityFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceMemoryPriorityFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryPriority" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryPriority" ptr val

instance Offset "sType" VkPhysicalDeviceMemoryPriorityFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceMemoryPriorityFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceMemoryPriorityFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceMemoryPriorityFeaturesEXT, pNext}

instance Offset "memoryPriority" VkPhysicalDeviceMemoryPriorityFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceMemoryPriorityFeaturesEXT, memoryPriority}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryPriorityFeaturesEXT where

#endif