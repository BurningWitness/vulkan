{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_copy_memory_indirect

module Vulkan.Types.Struct.VkPhysicalDeviceCopyMemoryIndirectFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceCopyMemoryIndirectFeaturesNV" #-} VkPhysicalDeviceCopyMemoryIndirectFeaturesNV =
       VkPhysicalDeviceCopyMemoryIndirectFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , indirectCopy :: VkBool32
         }

instance Storable VkPhysicalDeviceCopyMemoryIndirectFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceCopyMemoryIndirectFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceCopyMemoryIndirectFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceCopyMemoryIndirectFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"indirectCopy" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"indirectCopy" ptr val

instance Offset "sType" VkPhysicalDeviceCopyMemoryIndirectFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCopyMemoryIndirectFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceCopyMemoryIndirectFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCopyMemoryIndirectFeaturesNV, pNext}

instance Offset "indirectCopy" VkPhysicalDeviceCopyMemoryIndirectFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCopyMemoryIndirectFeaturesNV, indirectCopy}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceCopyMemoryIndirectFeaturesNV where

#endif