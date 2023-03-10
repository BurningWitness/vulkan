{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_buffer_device_address

module Vulkan.Types.Struct.VkBufferDeviceAddressCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBufferDeviceAddressCreateInfoEXT" #-} VkBufferDeviceAddressCreateInfoEXT =
       VkBufferDeviceAddressCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceAddress :: VkDeviceAddress
         }

instance Storable VkBufferDeviceAddressCreateInfoEXT where
  sizeOf    _ = #{size      VkBufferDeviceAddressCreateInfoEXT}
  alignment _ = #{alignment VkBufferDeviceAddressCreateInfoEXT}

  peek ptr = 
    VkBufferDeviceAddressCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceAddress" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceAddress" ptr val

instance Offset "sType" VkBufferDeviceAddressCreateInfoEXT where
  rawOffset = #{offset VkBufferDeviceAddressCreateInfoEXT, sType}

instance Offset "pNext" VkBufferDeviceAddressCreateInfoEXT where
  rawOffset = #{offset VkBufferDeviceAddressCreateInfoEXT, pNext}

instance Offset "deviceAddress" VkBufferDeviceAddressCreateInfoEXT where
  rawOffset = #{offset VkBufferDeviceAddressCreateInfoEXT, deviceAddress}

#else

module Vulkan.Types.Struct.VkBufferDeviceAddressCreateInfoEXT where

#endif