{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkMemoryOpaqueCaptureAddressAllocateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryOpaqueCaptureAddressAllocateInfo" #-} VkMemoryOpaqueCaptureAddressAllocateInfo =
       VkMemoryOpaqueCaptureAddressAllocateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , opaqueCaptureAddress :: #{type uint64_t}
         }

instance Storable VkMemoryOpaqueCaptureAddressAllocateInfo where
  sizeOf    _ = #{size      VkMemoryOpaqueCaptureAddressAllocateInfo}
  alignment _ = #{alignment VkMemoryOpaqueCaptureAddressAllocateInfo}

  peek ptr = 
    VkMemoryOpaqueCaptureAddressAllocateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"opaqueCaptureAddress" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"opaqueCaptureAddress" ptr val

instance Offset "sType" VkMemoryOpaqueCaptureAddressAllocateInfo where
  rawOffset = #{offset VkMemoryOpaqueCaptureAddressAllocateInfo, sType}

instance Offset "pNext" VkMemoryOpaqueCaptureAddressAllocateInfo where
  rawOffset = #{offset VkMemoryOpaqueCaptureAddressAllocateInfo, pNext}

instance Offset "opaqueCaptureAddress" VkMemoryOpaqueCaptureAddressAllocateInfo where
  rawOffset = #{offset VkMemoryOpaqueCaptureAddressAllocateInfo, opaqueCaptureAddress}

#else

module Vulkan.Types.Struct.VkMemoryOpaqueCaptureAddressAllocateInfo where

#endif