{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance4

module Vulkan.Types.Struct.VkPhysicalDeviceMaintenance4PropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMaintenance4PropertiesKHR" #-} VkPhysicalDeviceMaintenance4PropertiesKHR =
       VkPhysicalDeviceMaintenance4PropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxBufferSize :: VkDeviceSize
         }

instance Storable VkPhysicalDeviceMaintenance4PropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceMaintenance4PropertiesKHR}
  alignment _ = #{alignment VkPhysicalDeviceMaintenance4PropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceMaintenance4PropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxBufferSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxBufferSize" ptr val

instance Offset "sType" VkPhysicalDeviceMaintenance4PropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceMaintenance4PropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceMaintenance4PropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceMaintenance4PropertiesKHR, pNext}

instance Offset "maxBufferSize" VkPhysicalDeviceMaintenance4PropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceMaintenance4PropertiesKHR, maxBufferSize}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMaintenance4PropertiesKHR where

#endif