{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_buffer_device_address

module Vulkan.Types.Struct.VkBufferOpaqueCaptureAddressCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBufferOpaqueCaptureAddressCreateInfoKHR" #-} VkBufferOpaqueCaptureAddressCreateInfoKHR =
       VkBufferOpaqueCaptureAddressCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , opaqueCaptureAddress :: #{type uint64_t}
         }

instance Storable VkBufferOpaqueCaptureAddressCreateInfoKHR where
  sizeOf    _ = #{size      VkBufferOpaqueCaptureAddressCreateInfoKHR}
  alignment _ = #{alignment VkBufferOpaqueCaptureAddressCreateInfoKHR}

  peek ptr = 
    VkBufferOpaqueCaptureAddressCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"opaqueCaptureAddress" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"opaqueCaptureAddress" ptr val

instance Offset "sType" VkBufferOpaqueCaptureAddressCreateInfoKHR where
  rawOffset = #{offset VkBufferOpaqueCaptureAddressCreateInfoKHR, sType}

instance Offset "pNext" VkBufferOpaqueCaptureAddressCreateInfoKHR where
  rawOffset = #{offset VkBufferOpaqueCaptureAddressCreateInfoKHR, pNext}

instance Offset "opaqueCaptureAddress" VkBufferOpaqueCaptureAddressCreateInfoKHR where
  rawOffset = #{offset VkBufferOpaqueCaptureAddressCreateInfoKHR, opaqueCaptureAddress}

#else

module Vulkan.Types.Struct.VkBufferOpaqueCaptureAddressCreateInfoKHR where

#endif