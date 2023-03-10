{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_fault

module Vulkan.Types.Struct.VkDeviceFaultAddressInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkDeviceFaultAddressTypeEXT



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceFaultAddressInfoEXT" #-} VkDeviceFaultAddressInfoEXT =
       VkDeviceFaultAddressInfoEXT
         { addressType :: VkDeviceFaultAddressTypeEXT
         , reportedAddress :: VkDeviceAddress
         , addressPrecision :: VkDeviceSize
         }

instance Storable VkDeviceFaultAddressInfoEXT where
  sizeOf    _ = #{size      VkDeviceFaultAddressInfoEXT}
  alignment _ = #{alignment VkDeviceFaultAddressInfoEXT}

  peek ptr = 
    VkDeviceFaultAddressInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"addressType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"reportedAddress" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"addressPrecision" ptr)

  poke ptr val = do
    pokeField @"addressType" ptr val
    pokeField @"reportedAddress" ptr val
    pokeField @"addressPrecision" ptr val

instance Offset "addressType" VkDeviceFaultAddressInfoEXT where
  rawOffset = #{offset VkDeviceFaultAddressInfoEXT, addressType}

instance Offset "reportedAddress" VkDeviceFaultAddressInfoEXT where
  rawOffset = #{offset VkDeviceFaultAddressInfoEXT, reportedAddress}

instance Offset "addressPrecision" VkDeviceFaultAddressInfoEXT where
  rawOffset = #{offset VkDeviceFaultAddressInfoEXT, addressPrecision}

#else

module Vulkan.Types.Struct.VkDeviceFaultAddressInfoEXT where

#endif