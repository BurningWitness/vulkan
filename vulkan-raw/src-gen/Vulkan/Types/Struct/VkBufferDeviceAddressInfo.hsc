{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkBufferDeviceAddressInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBufferDeviceAddressInfo" #-} VkBufferDeviceAddressInfo =
       VkBufferDeviceAddressInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , buffer :: VkBuffer
         }

instance Storable VkBufferDeviceAddressInfo where
  sizeOf    _ = #{size      VkBufferDeviceAddressInfo}
  alignment _ = #{alignment VkBufferDeviceAddressInfo}

  peek ptr = 
    VkBufferDeviceAddressInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"buffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"buffer" ptr val

instance Offset "sType" VkBufferDeviceAddressInfo where
  rawOffset = #{offset VkBufferDeviceAddressInfo, sType}

instance Offset "pNext" VkBufferDeviceAddressInfo where
  rawOffset = #{offset VkBufferDeviceAddressInfo, pNext}

instance Offset "buffer" VkBufferDeviceAddressInfo where
  rawOffset = #{offset VkBufferDeviceAddressInfo, buffer}

#else

module Vulkan.Types.Struct.VkBufferDeviceAddressInfo where

#endif