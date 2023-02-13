{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dedicated_allocation

module Vulkan.Types.Struct.VkMemoryDedicatedRequirementsKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryDedicatedRequirementsKHR" #-} VkMemoryDedicatedRequirementsKHR =
       VkMemoryDedicatedRequirementsKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , prefersDedicatedAllocation :: VkBool32
         , requiresDedicatedAllocation :: VkBool32
         }

instance Storable VkMemoryDedicatedRequirementsKHR where
  sizeOf    _ = #{size      VkMemoryDedicatedRequirementsKHR}
  alignment _ = #{alignment VkMemoryDedicatedRequirementsKHR}

  peek ptr = 
    VkMemoryDedicatedRequirementsKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"prefersDedicatedAllocation" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"requiresDedicatedAllocation" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"prefersDedicatedAllocation" ptr val
    pokeField @"requiresDedicatedAllocation" ptr val

instance Offset "sType" VkMemoryDedicatedRequirementsKHR where
  rawOffset = #{offset VkMemoryDedicatedRequirementsKHR, sType}

instance Offset "pNext" VkMemoryDedicatedRequirementsKHR where
  rawOffset = #{offset VkMemoryDedicatedRequirementsKHR, pNext}

instance Offset "prefersDedicatedAllocation" VkMemoryDedicatedRequirementsKHR where
  rawOffset = #{offset VkMemoryDedicatedRequirementsKHR, prefersDedicatedAllocation}

instance Offset "requiresDedicatedAllocation" VkMemoryDedicatedRequirementsKHR where
  rawOffset = #{offset VkMemoryDedicatedRequirementsKHR, requiresDedicatedAllocation}

#else

module Vulkan.Types.Struct.VkMemoryDedicatedRequirementsKHR where

#endif