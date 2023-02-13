{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkMemoryDedicatedRequirements where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryDedicatedRequirements" #-} VkMemoryDedicatedRequirements =
       VkMemoryDedicatedRequirements
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , prefersDedicatedAllocation :: VkBool32
         , requiresDedicatedAllocation :: VkBool32
         }

instance Storable VkMemoryDedicatedRequirements where
  sizeOf    _ = #{size      VkMemoryDedicatedRequirements}
  alignment _ = #{alignment VkMemoryDedicatedRequirements}

  peek ptr = 
    VkMemoryDedicatedRequirements
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"prefersDedicatedAllocation" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"requiresDedicatedAllocation" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"prefersDedicatedAllocation" ptr val
    pokeField @"requiresDedicatedAllocation" ptr val

instance Offset "sType" VkMemoryDedicatedRequirements where
  rawOffset = #{offset VkMemoryDedicatedRequirements, sType}

instance Offset "pNext" VkMemoryDedicatedRequirements where
  rawOffset = #{offset VkMemoryDedicatedRequirements, pNext}

instance Offset "prefersDedicatedAllocation" VkMemoryDedicatedRequirements where
  rawOffset = #{offset VkMemoryDedicatedRequirements, prefersDedicatedAllocation}

instance Offset "requiresDedicatedAllocation" VkMemoryDedicatedRequirements where
  rawOffset = #{offset VkMemoryDedicatedRequirements, requiresDedicatedAllocation}

#else

module Vulkan.Types.Struct.VkMemoryDedicatedRequirements where

#endif