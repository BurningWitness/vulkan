{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_memory_budget

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryBudgetPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMemoryBudgetPropertiesEXT" #-} VkPhysicalDeviceMemoryBudgetPropertiesEXT =
       VkPhysicalDeviceMemoryBudgetPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , heapBudget :: VkDeviceSize
         , heapUsage :: VkDeviceSize
         }

instance Storable VkPhysicalDeviceMemoryBudgetPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceMemoryBudgetPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceMemoryBudgetPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceMemoryBudgetPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"heapBudget" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"heapUsage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"heapBudget" ptr val
    pokeField @"heapUsage" ptr val

instance Offset "sType" VkPhysicalDeviceMemoryBudgetPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMemoryBudgetPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceMemoryBudgetPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMemoryBudgetPropertiesEXT, pNext}

instance Offset "heapBudget" VkPhysicalDeviceMemoryBudgetPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMemoryBudgetPropertiesEXT, heapBudget}

instance Offset "heapUsage" VkPhysicalDeviceMemoryBudgetPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMemoryBudgetPropertiesEXT, heapUsage}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMemoryBudgetPropertiesEXT where

#endif