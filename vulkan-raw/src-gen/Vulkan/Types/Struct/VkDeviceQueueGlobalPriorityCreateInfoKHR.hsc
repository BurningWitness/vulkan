{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_global_priority

module Vulkan.Types.Struct.VkDeviceQueueGlobalPriorityCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkQueueGlobalPriorityKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceQueueGlobalPriorityCreateInfoKHR" #-} VkDeviceQueueGlobalPriorityCreateInfoKHR =
       VkDeviceQueueGlobalPriorityCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , globalPriority :: VkQueueGlobalPriorityKHR
         }

instance Storable VkDeviceQueueGlobalPriorityCreateInfoKHR where
  sizeOf    _ = #{size      struct VkDeviceQueueGlobalPriorityCreateInfoKHR}
  alignment _ = #{alignment struct VkDeviceQueueGlobalPriorityCreateInfoKHR}

  peek ptr = 
    VkDeviceQueueGlobalPriorityCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"globalPriority" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"globalPriority" ptr val

instance Offset "sType" VkDeviceQueueGlobalPriorityCreateInfoKHR where
  rawOffset = #{offset struct VkDeviceQueueGlobalPriorityCreateInfoKHR, sType}

instance Offset "pNext" VkDeviceQueueGlobalPriorityCreateInfoKHR where
  rawOffset = #{offset struct VkDeviceQueueGlobalPriorityCreateInfoKHR, pNext}

instance Offset "globalPriority" VkDeviceQueueGlobalPriorityCreateInfoKHR where
  rawOffset = #{offset struct VkDeviceQueueGlobalPriorityCreateInfoKHR, globalPriority}

#else

module Vulkan.Types.Struct.VkDeviceQueueGlobalPriorityCreateInfoKHR where

#endif