{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_global_priority

module Vulkan.Types.Struct.VkDeviceQueueGlobalPriorityCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkQueueGlobalPriorityKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceQueueGlobalPriorityCreateInfoEXT" #-} VkDeviceQueueGlobalPriorityCreateInfoEXT =
       VkDeviceQueueGlobalPriorityCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , globalPriority :: VkQueueGlobalPriorityKHR
         }

instance Storable VkDeviceQueueGlobalPriorityCreateInfoEXT where
  sizeOf    _ = #{size      VkDeviceQueueGlobalPriorityCreateInfoEXT}
  alignment _ = #{alignment VkDeviceQueueGlobalPriorityCreateInfoEXT}

  peek ptr = 
    VkDeviceQueueGlobalPriorityCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"globalPriority" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"globalPriority" ptr val

instance Offset "sType" VkDeviceQueueGlobalPriorityCreateInfoEXT where
  rawOffset = #{offset VkDeviceQueueGlobalPriorityCreateInfoEXT, sType}

instance Offset "pNext" VkDeviceQueueGlobalPriorityCreateInfoEXT where
  rawOffset = #{offset VkDeviceQueueGlobalPriorityCreateInfoEXT, pNext}

instance Offset "globalPriority" VkDeviceQueueGlobalPriorityCreateInfoEXT where
  rawOffset = #{offset VkDeviceQueueGlobalPriorityCreateInfoEXT, globalPriority}

#else

module Vulkan.Types.Struct.VkDeviceQueueGlobalPriorityCreateInfoEXT where

#endif