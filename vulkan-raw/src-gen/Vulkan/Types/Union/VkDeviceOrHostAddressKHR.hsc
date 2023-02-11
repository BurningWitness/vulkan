{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      union VkDeviceOrHostAddressKHR}
  alignment _ = #{alignment union VkDeviceOrHostAddressKHR}

  peek ptr = 
    VkDeviceOrHostAddressKHR
       <$> peek (offset @"deviceAddress" ptr)
       <*> peek (offset @"hostAddress" ptr)

  poke ptr val = do
    pokeField @"deviceAddress" ptr val
    pokeField @"hostAddress" ptr val

instance Offset "deviceAddress" VkDeviceOrHostAddressKHR where
  rawOffset = #{offset union VkDeviceOrHostAddressKHR, deviceAddress}

instance Offset "hostAddress" VkDeviceOrHostAddressKHR where
  rawOffset = #{offset union VkDeviceOrHostAddressKHR, hostAddress}

#else

module Vulkan.Types.Union.VkDeviceOrHostAddressKHR where

#endif