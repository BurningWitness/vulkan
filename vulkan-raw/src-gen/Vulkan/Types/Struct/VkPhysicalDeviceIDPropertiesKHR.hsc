{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_external_fence_capabilities) || (VK_KHR_external_memory_capabilities) || (VK_KHR_external_semaphore_capabilities)

module Vulkan.Types.Struct.VkPhysicalDeviceIDPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceIDPropertiesKHR" #-} VkPhysicalDeviceIDPropertiesKHR =
       VkPhysicalDeviceIDPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceUUID :: #{type uint8_t}
         , driverUUID :: #{type uint8_t}
         , deviceLUID :: #{type uint8_t}
         , deviceNodeMask :: #{type uint32_t}
         , deviceLUIDValid :: VkBool32
         }

instance Storable VkPhysicalDeviceIDPropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceIDPropertiesKHR}
  alignment _ = #{alignment VkPhysicalDeviceIDPropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceIDPropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceUUID" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"driverUUID" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceLUID" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceNodeMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceLUIDValid" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceUUID" ptr val
    pokeField @"driverUUID" ptr val
    pokeField @"deviceLUID" ptr val
    pokeField @"deviceNodeMask" ptr val
    pokeField @"deviceLUIDValid" ptr val

instance Offset "sType" VkPhysicalDeviceIDPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceIDPropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceIDPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceIDPropertiesKHR, pNext}

instance Offset "deviceUUID" VkPhysicalDeviceIDPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceIDPropertiesKHR, deviceUUID}

instance Offset "driverUUID" VkPhysicalDeviceIDPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceIDPropertiesKHR, driverUUID}

instance Offset "deviceLUID" VkPhysicalDeviceIDPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceIDPropertiesKHR, deviceLUID}

instance Offset "deviceNodeMask" VkPhysicalDeviceIDPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceIDPropertiesKHR, deviceNodeMask}

instance Offset "deviceLUIDValid" VkPhysicalDeviceIDPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceIDPropertiesKHR, deviceLUIDValid}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceIDPropertiesKHR where

#endif