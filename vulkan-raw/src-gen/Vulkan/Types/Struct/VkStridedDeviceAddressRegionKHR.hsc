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
  sizeOf    _ = #{size      struct VkStridedDeviceAddressRegionKHR}
  alignment _ = #{alignment struct VkStridedDeviceAddressRegionKHR}

  peek ptr = 
    VkStridedDeviceAddressRegionKHR
       <$> peek (offset @"deviceAddress" ptr)
       <*> peek (offset @"stride" ptr)
       <*> peek (offset @"size" ptr)

  poke ptr val = do
    pokeField @"deviceAddress" ptr val
    pokeField @"stride" ptr val
    pokeField @"size" ptr val

instance Offset "deviceAddress" VkStridedDeviceAddressRegionKHR where
  rawOffset = #{offset struct VkStridedDeviceAddressRegionKHR, deviceAddress}

instance Offset "stride" VkStridedDeviceAddressRegionKHR where
  rawOffset = #{offset struct VkStridedDeviceAddressRegionKHR, stride}

instance Offset "size" VkStridedDeviceAddressRegionKHR where
  rawOffset = #{offset struct VkStridedDeviceAddressRegionKHR, size}

#else

module Vulkan.Types.Struct.VkStridedDeviceAddressRegionKHR where

#endif