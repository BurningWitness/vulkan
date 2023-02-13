{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_dedicated_allocation

module Vulkan.Types.Struct.VkDedicatedAllocationImageCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDedicatedAllocationImageCreateInfoNV" #-} VkDedicatedAllocationImageCreateInfoNV =
       VkDedicatedAllocationImageCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , dedicatedAllocation :: VkBool32 -- ^ Whether this image uses a dedicated allocation
         }

instance Storable VkDedicatedAllocationImageCreateInfoNV where
  sizeOf    _ = #{size      VkDedicatedAllocationImageCreateInfoNV}
  alignment _ = #{alignment VkDedicatedAllocationImageCreateInfoNV}

  peek ptr = 
    VkDedicatedAllocationImageCreateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"dedicatedAllocation" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dedicatedAllocation" ptr val

instance Offset "sType" VkDedicatedAllocationImageCreateInfoNV where
  rawOffset = #{offset VkDedicatedAllocationImageCreateInfoNV, sType}

instance Offset "pNext" VkDedicatedAllocationImageCreateInfoNV where
  rawOffset = #{offset VkDedicatedAllocationImageCreateInfoNV, pNext}

instance Offset "dedicatedAllocation" VkDedicatedAllocationImageCreateInfoNV where
  rawOffset = #{offset VkDedicatedAllocationImageCreateInfoNV, dedicatedAllocation}

#else

module Vulkan.Types.Struct.VkDedicatedAllocationImageCreateInfoNV where

#endif