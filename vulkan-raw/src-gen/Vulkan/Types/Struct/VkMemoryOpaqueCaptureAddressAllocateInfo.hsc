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
  sizeOf    _ = #{size      struct VkMemoryOpaqueCaptureAddressAllocateInfo}
  alignment _ = #{alignment struct VkMemoryOpaqueCaptureAddressAllocateInfo}

  peek ptr = 
    VkMemoryOpaqueCaptureAddressAllocateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"opaqueCaptureAddress" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"opaqueCaptureAddress" ptr val

instance Offset "sType" VkMemoryOpaqueCaptureAddressAllocateInfo where
  rawOffset = #{offset struct VkMemoryOpaqueCaptureAddressAllocateInfo, sType}

instance Offset "pNext" VkMemoryOpaqueCaptureAddressAllocateInfo where
  rawOffset = #{offset struct VkMemoryOpaqueCaptureAddressAllocateInfo, pNext}

instance Offset "opaqueCaptureAddress" VkMemoryOpaqueCaptureAddressAllocateInfo where
  rawOffset = #{offset struct VkMemoryOpaqueCaptureAddressAllocateInfo, opaqueCaptureAddress}

#else

module Vulkan.Types.Struct.VkMemoryOpaqueCaptureAddressAllocateInfo where

#endif