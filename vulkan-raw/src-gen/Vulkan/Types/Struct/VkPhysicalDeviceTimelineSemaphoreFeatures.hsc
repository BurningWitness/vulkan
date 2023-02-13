{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceTimelineSemaphoreFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceTimelineSemaphoreFeatures" #-} VkPhysicalDeviceTimelineSemaphoreFeatures =
       VkPhysicalDeviceTimelineSemaphoreFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , timelineSemaphore :: VkBool32
         }

instance Storable VkPhysicalDeviceTimelineSemaphoreFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceTimelineSemaphoreFeatures}
  alignment _ = #{alignment VkPhysicalDeviceTimelineSemaphoreFeatures}

  peek ptr = 
    VkPhysicalDeviceTimelineSemaphoreFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"timelineSemaphore" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"timelineSemaphore" ptr val

instance Offset "sType" VkPhysicalDeviceTimelineSemaphoreFeatures where
  rawOffset = #{offset VkPhysicalDeviceTimelineSemaphoreFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceTimelineSemaphoreFeatures where
  rawOffset = #{offset VkPhysicalDeviceTimelineSemaphoreFeatures, pNext}

instance Offset "timelineSemaphore" VkPhysicalDeviceTimelineSemaphoreFeatures where
  rawOffset = #{offset VkPhysicalDeviceTimelineSemaphoreFeatures, timelineSemaphore}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTimelineSemaphoreFeatures where

#endif