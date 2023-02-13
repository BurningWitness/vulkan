{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_dedicated_allocation

module Vulkan.Types.Struct.VkDedicatedAllocationBufferCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDedicatedAllocationBufferCreateInfoNV" #-} VkDedicatedAllocationBufferCreateInfoNV =
       VkDedicatedAllocationBufferCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , dedicatedAllocation :: VkBool32 -- ^ Whether this buffer uses a dedicated allocation
         }

instance Storable VkDedicatedAllocationBufferCreateInfoNV where
  sizeOf    _ = #{size      VkDedicatedAllocationBufferCreateInfoNV}
  alignment _ = #{alignment VkDedicatedAllocationBufferCreateInfoNV}

  peek ptr = 
    VkDedicatedAllocationBufferCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dedicatedAllocation" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dedicatedAllocation" ptr val

instance Offset "sType" VkDedicatedAllocationBufferCreateInfoNV where
  rawOffset = #{offset VkDedicatedAllocationBufferCreateInfoNV, sType}

instance Offset "pNext" VkDedicatedAllocationBufferCreateInfoNV where
  rawOffset = #{offset VkDedicatedAllocationBufferCreateInfoNV, pNext}

instance Offset "dedicatedAllocation" VkDedicatedAllocationBufferCreateInfoNV where
  rawOffset = #{offset VkDedicatedAllocationBufferCreateInfoNV, dedicatedAllocation}

#else

module Vulkan.Types.Struct.VkDedicatedAllocationBufferCreateInfoNV where

#endif