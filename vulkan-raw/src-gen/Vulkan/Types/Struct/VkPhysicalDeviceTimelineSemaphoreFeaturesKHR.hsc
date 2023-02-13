{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Types.Struct.VkPhysicalDeviceTimelineSemaphoreFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceTimelineSemaphoreFeaturesKHR" #-} VkPhysicalDeviceTimelineSemaphoreFeaturesKHR =
       VkPhysicalDeviceTimelineSemaphoreFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , timelineSemaphore :: VkBool32
         }

instance Storable VkPhysicalDeviceTimelineSemaphoreFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceTimelineSemaphoreFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceTimelineSemaphoreFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceTimelineSemaphoreFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"timelineSemaphore" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"timelineSemaphore" ptr val

instance Offset "sType" VkPhysicalDeviceTimelineSemaphoreFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceTimelineSemaphoreFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceTimelineSemaphoreFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceTimelineSemaphoreFeaturesKHR, pNext}

instance Offset "timelineSemaphore" VkPhysicalDeviceTimelineSemaphoreFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceTimelineSemaphoreFeaturesKHR, timelineSemaphore}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTimelineSemaphoreFeaturesKHR where

#endif