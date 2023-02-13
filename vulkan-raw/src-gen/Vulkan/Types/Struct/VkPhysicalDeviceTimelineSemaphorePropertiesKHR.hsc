{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Types.Struct.VkPhysicalDeviceTimelineSemaphorePropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceTimelineSemaphorePropertiesKHR" #-} VkPhysicalDeviceTimelineSemaphorePropertiesKHR =
       VkPhysicalDeviceTimelineSemaphorePropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxTimelineSemaphoreValueDifference :: #{type uint64_t}
         }

instance Storable VkPhysicalDeviceTimelineSemaphorePropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceTimelineSemaphorePropertiesKHR}
  alignment _ = #{alignment VkPhysicalDeviceTimelineSemaphorePropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceTimelineSemaphorePropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxTimelineSemaphoreValueDifference" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxTimelineSemaphoreValueDifference" ptr val

instance Offset "sType" VkPhysicalDeviceTimelineSemaphorePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceTimelineSemaphorePropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceTimelineSemaphorePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceTimelineSemaphorePropertiesKHR, pNext}

instance Offset "maxTimelineSemaphoreValueDifference" VkPhysicalDeviceTimelineSemaphorePropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceTimelineSemaphorePropertiesKHR, maxTimelineSemaphoreValueDifference}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTimelineSemaphorePropertiesKHR where

#endif