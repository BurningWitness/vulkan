{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceIDProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceIDProperties" #-} VkPhysicalDeviceIDProperties =
       VkPhysicalDeviceIDProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceUUID :: #{type uint8_t}
         , driverUUID :: #{type uint8_t}
         , deviceLUID :: #{type uint8_t}
         , deviceNodeMask :: #{type uint32_t}
         , deviceLUIDValid :: VkBool32
         }

instance Storable VkPhysicalDeviceIDProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceIDProperties}
  alignment _ = #{alignment VkPhysicalDeviceIDProperties}

  peek ptr = 
    VkPhysicalDeviceIDProperties
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

instance Offset "sType" VkPhysicalDeviceIDProperties where
  rawOffset = #{offset VkPhysicalDeviceIDProperties, sType}

instance Offset "pNext" VkPhysicalDeviceIDProperties where
  rawOffset = #{offset VkPhysicalDeviceIDProperties, pNext}

instance Offset "deviceUUID" VkPhysicalDeviceIDProperties where
  rawOffset = #{offset VkPhysicalDeviceIDProperties, deviceUUID}

instance Offset "driverUUID" VkPhysicalDeviceIDProperties where
  rawOffset = #{offset VkPhysicalDeviceIDProperties, driverUUID}

instance Offset "deviceLUID" VkPhysicalDeviceIDProperties where
  rawOffset = #{offset VkPhysicalDeviceIDProperties, deviceLUID}

instance Offset "deviceNodeMask" VkPhysicalDeviceIDProperties where
  rawOffset = #{offset VkPhysicalDeviceIDProperties, deviceNodeMask}

instance Offset "deviceLUIDValid" VkPhysicalDeviceIDProperties where
  rawOffset = #{offset VkPhysicalDeviceIDProperties, deviceLUIDValid}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceIDProperties where

#endif