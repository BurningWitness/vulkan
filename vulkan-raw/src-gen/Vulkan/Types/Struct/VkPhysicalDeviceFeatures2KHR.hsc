{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Struct.VkPhysicalDeviceFeatures2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceFeatures



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFeatures2KHR" #-} VkPhysicalDeviceFeatures2KHR =
       VkPhysicalDeviceFeatures2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , features :: VkPhysicalDeviceFeatures
         }

instance Storable VkPhysicalDeviceFeatures2KHR where
  sizeOf    _ = #{size      VkPhysicalDeviceFeatures2KHR}
  alignment _ = #{alignment VkPhysicalDeviceFeatures2KHR}

  peek ptr = 
    VkPhysicalDeviceFeatures2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"features" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"features" ptr val

instance Offset "sType" VkPhysicalDeviceFeatures2KHR where
  rawOffset = #{offset VkPhysicalDeviceFeatures2KHR, sType}

instance Offset "pNext" VkPhysicalDeviceFeatures2KHR where
  rawOffset = #{offset VkPhysicalDeviceFeatures2KHR, pNext}

instance Offset "features" VkPhysicalDeviceFeatures2KHR where
  rawOffset = #{offset VkPhysicalDeviceFeatures2KHR, features}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFeatures2KHR where

#endif