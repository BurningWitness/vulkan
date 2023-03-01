{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Union.VkDeviceOrHostAddressKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceOrHostAddressKHR" #-} VkDeviceOrHostAddressKHR =
       VkDeviceOrHostAddressKHR
         { deviceAddress :: VkDeviceAddress
         , hostAddress :: Ptr ()
         }

instance Storable VkDeviceOrHostAddressKHR where
  sizeOf    _ = #{size      VkDeviceOrHostAddressKHR}
  alignment _ = #{alignment VkDeviceOrHostAddressKHR}

  peek ptr = 
    VkDeviceOrHostAddressKHR
       <$> peek (Foreign.Storable.Offset.offset @"deviceAddress" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hostAddress" ptr)

  poke ptr val = do
    pokeField @"deviceAddress" ptr val
    pokeField @"hostAddress" ptr val

instance Offset "deviceAddress" VkDeviceOrHostAddressKHR where
  rawOffset = #{offset VkDeviceOrHostAddressKHR, deviceAddress}

instance Offset "hostAddress" VkDeviceOrHostAddressKHR where
  rawOffset = #{offset VkDeviceOrHostAddressKHR, hostAddress}

#else

module Vulkan.Types.Union.VkDeviceOrHostAddressKHR where

#endif