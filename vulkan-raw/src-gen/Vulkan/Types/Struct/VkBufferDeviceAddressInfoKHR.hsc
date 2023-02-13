{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_buffer_device_address

module Vulkan.Types.Struct.VkBufferDeviceAddressInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBufferDeviceAddressInfoKHR" #-} VkBufferDeviceAddressInfoKHR =
       VkBufferDeviceAddressInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , buffer :: VkBuffer
         }

instance Storable VkBufferDeviceAddressInfoKHR where
  sizeOf    _ = #{size      VkBufferDeviceAddressInfoKHR}
  alignment _ = #{alignment VkBufferDeviceAddressInfoKHR}

  peek ptr = 
    VkBufferDeviceAddressInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"buffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"buffer" ptr val

instance Offset "sType" VkBufferDeviceAddressInfoKHR where
  rawOffset = #{offset VkBufferDeviceAddressInfoKHR, sType}

instance Offset "pNext" VkBufferDeviceAddressInfoKHR where
  rawOffset = #{offset VkBufferDeviceAddressInfoKHR, pNext}

instance Offset "buffer" VkBufferDeviceAddressInfoKHR where
  rawOffset = #{offset VkBufferDeviceAddressInfoKHR, buffer}

#else

module Vulkan.Types.Struct.VkBufferDeviceAddressInfoKHR where

#endif