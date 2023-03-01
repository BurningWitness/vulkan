{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_buffer_device_address

module Vulkan.Types.Struct.VkDeviceMemoryOpaqueCaptureAddressInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceMemoryOpaqueCaptureAddressInfoKHR" #-} VkDeviceMemoryOpaqueCaptureAddressInfoKHR =
       VkDeviceMemoryOpaqueCaptureAddressInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memory :: VkDeviceMemory
         }

instance Storable VkDeviceMemoryOpaqueCaptureAddressInfoKHR where
  sizeOf    _ = #{size      VkDeviceMemoryOpaqueCaptureAddressInfoKHR}
  alignment _ = #{alignment VkDeviceMemoryOpaqueCaptureAddressInfoKHR}

  peek ptr = 
    VkDeviceMemoryOpaqueCaptureAddressInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memory" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memory" ptr val

instance Offset "sType" VkDeviceMemoryOpaqueCaptureAddressInfoKHR where
  rawOffset = #{offset VkDeviceMemoryOpaqueCaptureAddressInfoKHR, sType}

instance Offset "pNext" VkDeviceMemoryOpaqueCaptureAddressInfoKHR where
  rawOffset = #{offset VkDeviceMemoryOpaqueCaptureAddressInfoKHR, pNext}

instance Offset "memory" VkDeviceMemoryOpaqueCaptureAddressInfoKHR where
  rawOffset = #{offset VkDeviceMemoryOpaqueCaptureAddressInfoKHR, memory}

#else

module Vulkan.Types.Struct.VkDeviceMemoryOpaqueCaptureAddressInfoKHR where

#endif