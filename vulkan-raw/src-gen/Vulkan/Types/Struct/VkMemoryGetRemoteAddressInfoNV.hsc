{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory_rdma

module Vulkan.Types.Struct.VkMemoryGetRemoteAddressInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryGetRemoteAddressInfoNV" #-} VkMemoryGetRemoteAddressInfoNV =
       VkMemoryGetRemoteAddressInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memory :: VkDeviceMemory
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         }

instance Storable VkMemoryGetRemoteAddressInfoNV where
  sizeOf    _ = #{size      VkMemoryGetRemoteAddressInfoNV}
  alignment _ = #{alignment VkMemoryGetRemoteAddressInfoNV}

  peek ptr = 
    VkMemoryGetRemoteAddressInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memory" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memory" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkMemoryGetRemoteAddressInfoNV where
  rawOffset = #{offset VkMemoryGetRemoteAddressInfoNV, sType}

instance Offset "pNext" VkMemoryGetRemoteAddressInfoNV where
  rawOffset = #{offset VkMemoryGetRemoteAddressInfoNV, pNext}

instance Offset "memory" VkMemoryGetRemoteAddressInfoNV where
  rawOffset = #{offset VkMemoryGetRemoteAddressInfoNV, memory}

instance Offset "handleType" VkMemoryGetRemoteAddressInfoNV where
  rawOffset = #{offset VkMemoryGetRemoteAddressInfoNV, handleType}

#else

module Vulkan.Types.Struct.VkMemoryGetRemoteAddressInfoNV where

#endif