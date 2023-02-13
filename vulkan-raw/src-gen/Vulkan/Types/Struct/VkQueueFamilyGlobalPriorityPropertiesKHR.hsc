{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_global_priority

module Vulkan.Types.Struct.VkQueueFamilyGlobalPriorityPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkQueueGlobalPriorityKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkQueueFamilyGlobalPriorityPropertiesKHR" #-} VkQueueFamilyGlobalPriorityPropertiesKHR =
       VkQueueFamilyGlobalPriorityPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , priorityCount :: #{type uint32_t}
         , priorities :: VkQueueGlobalPriorityKHR
         }

instance Storable VkQueueFamilyGlobalPriorityPropertiesKHR where
  sizeOf    _ = #{size      VkQueueFamilyGlobalPriorityPropertiesKHR}
  alignment _ = #{alignment VkQueueFamilyGlobalPriorityPropertiesKHR}

  peek ptr = 
    VkQueueFamilyGlobalPriorityPropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"priorityCount" ptr)
       <*> peek (offset @"priorities" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"priorityCount" ptr val
    pokeField @"priorities" ptr val

instance Offset "sType" VkQueueFamilyGlobalPriorityPropertiesKHR where
  rawOffset = #{offset VkQueueFamilyGlobalPriorityPropertiesKHR, sType}

instance Offset "pNext" VkQueueFamilyGlobalPriorityPropertiesKHR where
  rawOffset = #{offset VkQueueFamilyGlobalPriorityPropertiesKHR, pNext}

instance Offset "priorityCount" VkQueueFamilyGlobalPriorityPropertiesKHR where
  rawOffset = #{offset VkQueueFamilyGlobalPriorityPropertiesKHR, priorityCount}

instance Offset "priorities" VkQueueFamilyGlobalPriorityPropertiesKHR where
  rawOffset = #{offset VkQueueFamilyGlobalPriorityPropertiesKHR, priorities}

#else

module Vulkan.Types.Struct.VkQueueFamilyGlobalPriorityPropertiesKHR where

#endif