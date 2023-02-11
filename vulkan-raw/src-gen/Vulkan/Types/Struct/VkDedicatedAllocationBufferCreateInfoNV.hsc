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
  sizeOf    _ = #{size      struct VkDedicatedAllocationBufferCreateInfoNV}
  alignment _ = #{alignment struct VkDedicatedAllocationBufferCreateInfoNV}

  peek ptr = 
    VkDedicatedAllocationBufferCreateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"dedicatedAllocation" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dedicatedAllocation" ptr val

instance Offset "sType" VkDedicatedAllocationBufferCreateInfoNV where
  rawOffset = #{offset struct VkDedicatedAllocationBufferCreateInfoNV, sType}

instance Offset "pNext" VkDedicatedAllocationBufferCreateInfoNV where
  rawOffset = #{offset struct VkDedicatedAllocationBufferCreateInfoNV, pNext}

instance Offset "dedicatedAllocation" VkDedicatedAllocationBufferCreateInfoNV where
  rawOffset = #{offset struct VkDedicatedAllocationBufferCreateInfoNV, dedicatedAllocation}

#else

module Vulkan.Types.Struct.VkDedicatedAllocationBufferCreateInfoNV where

#endif