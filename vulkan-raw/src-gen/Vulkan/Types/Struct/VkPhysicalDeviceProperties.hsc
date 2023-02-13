{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPhysicalDeviceProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPhysicalDeviceType
import Vulkan.Types.Struct.VkPhysicalDeviceLimits
import Vulkan.Types.Struct.VkPhysicalDeviceSparseProperties



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceProperties" #-} VkPhysicalDeviceProperties =
       VkPhysicalDeviceProperties
         { apiVersion :: #{type uint32_t}
         , driverVersion :: #{type uint32_t}
         , vendorID :: #{type uint32_t}
         , deviceID :: #{type uint32_t}
         , deviceType :: VkPhysicalDeviceType
         , deviceName :: #{type char}
         , pipelineCacheUUID :: #{type uint8_t}
         , limits :: VkPhysicalDeviceLimits
         , sparseProperties :: VkPhysicalDeviceSparseProperties
         }

instance Storable VkPhysicalDeviceProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceProperties}
  alignment _ = #{alignment VkPhysicalDeviceProperties}

  peek ptr = 
    VkPhysicalDeviceProperties
       <$> peek (Foreign.Storable.Offset.offset @"apiVersion" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"driverVersion" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vendorID" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceID" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceName" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineCacheUUID" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"limits" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sparseProperties" ptr)

  poke ptr val = do
    pokeField @"apiVersion" ptr val
    pokeField @"driverVersion" ptr val
    pokeField @"vendorID" ptr val
    pokeField @"deviceID" ptr val
    pokeField @"deviceType" ptr val
    pokeField @"deviceName" ptr val
    pokeField @"pipelineCacheUUID" ptr val
    pokeField @"limits" ptr val
    pokeField @"sparseProperties" ptr val

instance Offset "apiVersion" VkPhysicalDeviceProperties where
  rawOffset = #{offset VkPhysicalDeviceProperties, apiVersion}

instance Offset "driverVersion" VkPhysicalDeviceProperties where
  rawOffset = #{offset VkPhysicalDeviceProperties, driverVersion}

instance Offset "vendorID" VkPhysicalDeviceProperties where
  rawOffset = #{offset VkPhysicalDeviceProperties, vendorID}

instance Offset "deviceID" VkPhysicalDeviceProperties where
  rawOffset = #{offset VkPhysicalDeviceProperties, deviceID}

instance Offset "deviceType" VkPhysicalDeviceProperties where
  rawOffset = #{offset VkPhysicalDeviceProperties, deviceType}

instance Offset "deviceName" VkPhysicalDeviceProperties where
  rawOffset = #{offset VkPhysicalDeviceProperties, deviceName}

instance Offset "pipelineCacheUUID" VkPhysicalDeviceProperties where
  rawOffset = #{offset VkPhysicalDeviceProperties, pipelineCacheUUID}

instance Offset "limits" VkPhysicalDeviceProperties where
  rawOffset = #{offset VkPhysicalDeviceProperties, limits}

instance Offset "sparseProperties" VkPhysicalDeviceProperties where
  rawOffset = #{offset VkPhysicalDeviceProperties, sparseProperties}