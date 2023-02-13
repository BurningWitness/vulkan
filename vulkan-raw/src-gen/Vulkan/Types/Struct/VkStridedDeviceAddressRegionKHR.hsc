{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Struct.VkStridedDeviceAddressRegionKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkStridedDeviceAddressRegionKHR" #-} VkStridedDeviceAddressRegionKHR =
       VkStridedDeviceAddressRegionKHR
         { deviceAddress :: VkDeviceAddress
         , stride :: VkDeviceSize
         , size :: VkDeviceSize
         }

instance Storable VkStridedDeviceAddressRegionKHR where
  sizeOf    _ = #{size      VkStridedDeviceAddressRegionKHR}
  alignment _ = #{alignment VkStridedDeviceAddressRegionKHR}

  peek ptr = 
    VkStridedDeviceAddressRegionKHR
       <$> peek (Foreign.Storable.Offset.offset @"deviceAddress" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stride" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"size" ptr)

  poke ptr val = do
    pokeField @"deviceAddress" ptr val
    pokeField @"stride" ptr val
    pokeField @"size" ptr val

instance Offset "deviceAddress" VkStridedDeviceAddressRegionKHR where
  rawOffset = #{offset VkStridedDeviceAddressRegionKHR, deviceAddress}

instance Offset "stride" VkStridedDeviceAddressRegionKHR where
  rawOffset = #{offset VkStridedDeviceAddressRegionKHR, stride}

instance Offset "size" VkStridedDeviceAddressRegionKHR where
  rawOffset = #{offset VkStridedDeviceAddressRegionKHR, size}

#else

module Vulkan.Types.Struct.VkStridedDeviceAddressRegionKHR where

#endif