{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_global_priority_query

module Vulkan.Types.Struct.VkQueueFamilyGlobalPriorityPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkQueueGlobalPriorityKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkQueueFamilyGlobalPriorityPropertiesEXT" #-} VkQueueFamilyGlobalPriorityPropertiesEXT =
       VkQueueFamilyGlobalPriorityPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , priorityCount :: #{type uint32_t}
         , priorities :: VkQueueGlobalPriorityKHR
         }

instance Storable VkQueueFamilyGlobalPriorityPropertiesEXT where
  sizeOf    _ = #{size      VkQueueFamilyGlobalPriorityPropertiesEXT}
  alignment _ = #{alignment VkQueueFamilyGlobalPriorityPropertiesEXT}

  peek ptr = 
    VkQueueFamilyGlobalPriorityPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"priorityCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"priorities" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"priorityCount" ptr val
    pokeField @"priorities" ptr val

instance Offset "sType" VkQueueFamilyGlobalPriorityPropertiesEXT where
  rawOffset = #{offset VkQueueFamilyGlobalPriorityPropertiesEXT, sType}

instance Offset "pNext" VkQueueFamilyGlobalPriorityPropertiesEXT where
  rawOffset = #{offset VkQueueFamilyGlobalPriorityPropertiesEXT, pNext}

instance Offset "priorityCount" VkQueueFamilyGlobalPriorityPropertiesEXT where
  rawOffset = #{offset VkQueueFamilyGlobalPriorityPropertiesEXT, priorityCount}

instance Offset "priorities" VkQueueFamilyGlobalPriorityPropertiesEXT where
  rawOffset = #{offset VkQueueFamilyGlobalPriorityPropertiesEXT, priorities}

#else

module Vulkan.Types.Struct.VkQueueFamilyGlobalPriorityPropertiesEXT where

#endif