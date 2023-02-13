{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group_creation

module Vulkan.Types.Struct.VkDeviceGroupDeviceCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupDeviceCreateInfoKHR" #-} VkDeviceGroupDeviceCreateInfoKHR =
       VkDeviceGroupDeviceCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , physicalDeviceCount :: #{type uint32_t}
         , pPhysicalDevices :: Ptr VkPhysicalDevice
         }

instance Storable VkDeviceGroupDeviceCreateInfoKHR where
  sizeOf    _ = #{size      VkDeviceGroupDeviceCreateInfoKHR}
  alignment _ = #{alignment VkDeviceGroupDeviceCreateInfoKHR}

  peek ptr = 
    VkDeviceGroupDeviceCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"physicalDeviceCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pPhysicalDevices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"physicalDeviceCount" ptr val
    pokeField @"pPhysicalDevices" ptr val

instance Offset "sType" VkDeviceGroupDeviceCreateInfoKHR where
  rawOffset = #{offset VkDeviceGroupDeviceCreateInfoKHR, sType}

instance Offset "pNext" VkDeviceGroupDeviceCreateInfoKHR where
  rawOffset = #{offset VkDeviceGroupDeviceCreateInfoKHR, pNext}

instance Offset "physicalDeviceCount" VkDeviceGroupDeviceCreateInfoKHR where
  rawOffset = #{offset VkDeviceGroupDeviceCreateInfoKHR, physicalDeviceCount}

instance Offset "pPhysicalDevices" VkDeviceGroupDeviceCreateInfoKHR where
  rawOffset = #{offset VkDeviceGroupDeviceCreateInfoKHR, pPhysicalDevices}

#else

module Vulkan.Types.Struct.VkDeviceGroupDeviceCreateInfoKHR where

#endif