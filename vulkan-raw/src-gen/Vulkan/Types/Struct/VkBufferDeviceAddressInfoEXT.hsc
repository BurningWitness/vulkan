{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_buffer_device_address

module Vulkan.Types.Struct.VkBufferDeviceAddressInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBufferDeviceAddressInfoEXT" #-} VkBufferDeviceAddressInfoEXT =
       VkBufferDeviceAddressInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , buffer :: VkBuffer
         }

instance Storable VkBufferDeviceAddressInfoEXT where
  sizeOf    _ = #{size      VkBufferDeviceAddressInfoEXT}
  alignment _ = #{alignment VkBufferDeviceAddressInfoEXT}

  peek ptr = 
    VkBufferDeviceAddressInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"buffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"buffer" ptr val

instance Offset "sType" VkBufferDeviceAddressInfoEXT where
  rawOffset = #{offset VkBufferDeviceAddressInfoEXT, sType}

instance Offset "pNext" VkBufferDeviceAddressInfoEXT where
  rawOffset = #{offset VkBufferDeviceAddressInfoEXT, pNext}

instance Offset "buffer" VkBufferDeviceAddressInfoEXT where
  rawOffset = #{offset VkBufferDeviceAddressInfoEXT, buffer}

#else

module Vulkan.Types.Struct.VkBufferDeviceAddressInfoEXT where

#endif