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

module Vulkan.Types.Struct.VkMemoryOpaqueCaptureAddressAllocateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryOpaqueCaptureAddressAllocateInfoKHR" #-} VkMemoryOpaqueCaptureAddressAllocateInfoKHR =
       VkMemoryOpaqueCaptureAddressAllocateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , opaqueCaptureAddress :: #{type uint64_t}
         }

instance Storable VkMemoryOpaqueCaptureAddressAllocateInfoKHR where
  sizeOf    _ = #{size      VkMemoryOpaqueCaptureAddressAllocateInfoKHR}
  alignment _ = #{alignment VkMemoryOpaqueCaptureAddressAllocateInfoKHR}

  peek ptr = 
    VkMemoryOpaqueCaptureAddressAllocateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"opaqueCaptureAddress" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"opaqueCaptureAddress" ptr val

instance Offset "sType" VkMemoryOpaqueCaptureAddressAllocateInfoKHR where
  rawOffset = #{offset VkMemoryOpaqueCaptureAddressAllocateInfoKHR, sType}

instance Offset "pNext" VkMemoryOpaqueCaptureAddressAllocateInfoKHR where
  rawOffset = #{offset VkMemoryOpaqueCaptureAddressAllocateInfoKHR, pNext}

instance Offset "opaqueCaptureAddress" VkMemoryOpaqueCaptureAddressAllocateInfoKHR where
  rawOffset = #{offset VkMemoryOpaqueCaptureAddressAllocateInfoKHR, opaqueCaptureAddress}

#else

module Vulkan.Types.Struct.VkMemoryOpaqueCaptureAddressAllocateInfoKHR where

#endif