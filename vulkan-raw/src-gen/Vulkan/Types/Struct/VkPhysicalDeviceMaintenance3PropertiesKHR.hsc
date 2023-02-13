{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance3

module Vulkan.Types.Struct.VkPhysicalDeviceMaintenance3PropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMaintenance3PropertiesKHR" #-} VkPhysicalDeviceMaintenance3PropertiesKHR =
       VkPhysicalDeviceMaintenance3PropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxPerSetDescriptors :: #{type uint32_t}
         , maxMemoryAllocationSize :: VkDeviceSize
         }

instance Storable VkPhysicalDeviceMaintenance3PropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceMaintenance3PropertiesKHR}
  alignment _ = #{alignment VkPhysicalDeviceMaintenance3PropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceMaintenance3PropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxPerSetDescriptors" ptr)
       <*> peek (offset @"maxMemoryAllocationSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxPerSetDescriptors" ptr val
    pokeField @"maxMemoryAllocationSize" ptr val

instance Offset "sType" VkPhysicalDeviceMaintenance3PropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceMaintenance3PropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceMaintenance3PropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceMaintenance3PropertiesKHR, pNext}

instance Offset "maxPerSetDescriptors" VkPhysicalDeviceMaintenance3PropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceMaintenance3PropertiesKHR, maxPerSetDescriptors}

instance Offset "maxMemoryAllocationSize" VkPhysicalDeviceMaintenance3PropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceMaintenance3PropertiesKHR, maxMemoryAllocationSize}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMaintenance3PropertiesKHR where

#endif