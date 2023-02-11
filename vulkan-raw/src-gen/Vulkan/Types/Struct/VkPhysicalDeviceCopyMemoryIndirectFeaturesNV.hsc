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
  sizeOf    _ = #{size      struct VkPhysicalDeviceCopyMemoryIndirectFeaturesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceCopyMemoryIndirectFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceCopyMemoryIndirectFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"indirectCopy" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"indirectCopy" ptr val

instance Offset "sType" VkPhysicalDeviceCopyMemoryIndirectFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceCopyMemoryIndirectFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceCopyMemoryIndirectFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceCopyMemoryIndirectFeaturesNV, pNext}

instance Offset "indirectCopy" VkPhysicalDeviceCopyMemoryIndirectFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceCopyMemoryIndirectFeaturesNV, indirectCopy}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceCopyMemoryIndirectFeaturesNV where

#endif