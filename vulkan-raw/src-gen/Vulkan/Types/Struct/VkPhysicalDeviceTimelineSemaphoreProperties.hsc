{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceTimelineSemaphoreProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceTimelineSemaphoreProperties" #-} VkPhysicalDeviceTimelineSemaphoreProperties =
       VkPhysicalDeviceTimelineSemaphoreProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxTimelineSemaphoreValueDifference :: #{type uint64_t}
         }

instance Storable VkPhysicalDeviceTimelineSemaphoreProperties where
  sizeOf    _ = #{size      struct VkPhysicalDeviceTimelineSemaphoreProperties}
  alignment _ = #{alignment struct VkPhysicalDeviceTimelineSemaphoreProperties}

  peek ptr = 
    VkPhysicalDeviceTimelineSemaphoreProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxTimelineSemaphoreValueDifference" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxTimelineSemaphoreValueDifference" ptr val

instance Offset "sType" VkPhysicalDeviceTimelineSemaphoreProperties where
  rawOffset = #{offset struct VkPhysicalDeviceTimelineSemaphoreProperties, sType}

instance Offset "pNext" VkPhysicalDeviceTimelineSemaphoreProperties where
  rawOffset = #{offset struct VkPhysicalDeviceTimelineSemaphoreProperties, pNext}

instance Offset "maxTimelineSemaphoreValueDifference" VkPhysicalDeviceTimelineSemaphoreProperties where
  rawOffset = #{offset struct VkPhysicalDeviceTimelineSemaphoreProperties, maxTimelineSemaphoreValueDifference}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTimelineSemaphoreProperties where

#endif