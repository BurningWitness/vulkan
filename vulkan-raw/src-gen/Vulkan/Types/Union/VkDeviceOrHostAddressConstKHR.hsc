{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Union.VkDeviceOrHostAddressConstKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceOrHostAddressConstKHR" #-} VkDeviceOrHostAddressConstKHR =
       VkDeviceOrHostAddressConstKHR
         { deviceAddress :: VkDeviceAddress
         , hostAddress :: Ptr ()
         }

instance Storable VkDeviceOrHostAddressConstKHR where
  sizeOf    _ = #{size      VkDeviceOrHostAddressConstKHR}
  alignment _ = #{alignment VkDeviceOrHostAddressConstKHR}

  peek ptr = 
    VkDeviceOrHostAddressConstKHR
       <$> peek (Foreign.Storable.Offset.offset @"deviceAddress" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hostAddress" ptr)

  poke ptr val = do
    pokeField @"deviceAddress" ptr val
    pokeField @"hostAddress" ptr val

instance Offset "deviceAddress" VkDeviceOrHostAddressConstKHR where
  rawOffset = #{offset VkDeviceOrHostAddressConstKHR, deviceAddress}

instance Offset "hostAddress" VkDeviceOrHostAddressConstKHR where
  rawOffset = #{offset VkDeviceOrHostAddressConstKHR, hostAddress}

#else

module Vulkan.Types.Union.VkDeviceOrHostAddressConstKHR where

#endif