{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group_creation

module Vulkan.Types.Struct.VkPhysicalDeviceGroupPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceGroupPropertiesKHR" #-} VkPhysicalDeviceGroupPropertiesKHR =
       VkPhysicalDeviceGroupPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , physicalDeviceCount :: #{type uint32_t}
         , physicalDevices :: VkPhysicalDevice
         , subsetAllocation :: VkBool32
         }

instance Storable VkPhysicalDeviceGroupPropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceGroupPropertiesKHR}
  alignment _ = #{alignment VkPhysicalDeviceGroupPropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceGroupPropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"physicalDeviceCount" ptr)
       <*> peek (offset @"physicalDevices" ptr)
       <*> peek (offset @"subsetAllocation" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"physicalDeviceCount" ptr val
    pokeField @"physicalDevices" ptr val
    pokeField @"subsetAllocation" ptr val

instance Offset "sType" VkPhysicalDeviceGroupPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceGroupPropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceGroupPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceGroupPropertiesKHR, pNext}

instance Offset "physicalDeviceCount" VkPhysicalDeviceGroupPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceGroupPropertiesKHR, physicalDeviceCount}

instance Offset "physicalDevices" VkPhysicalDeviceGroupPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceGroupPropertiesKHR, physicalDevices}

instance Offset "subsetAllocation" VkPhysicalDeviceGroupPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceGroupPropertiesKHR, subsetAllocation}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceGroupPropertiesKHR where

#endif