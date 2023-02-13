{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_AMD_memory_overallocation_behavior

module Vulkan.Types.Struct.VkDeviceMemoryOverallocationCreateInfoAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkMemoryOverallocationBehaviorAMD
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceMemoryOverallocationCreateInfoAMD" #-} VkDeviceMemoryOverallocationCreateInfoAMD =
       VkDeviceMemoryOverallocationCreateInfoAMD
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , overallocationBehavior :: VkMemoryOverallocationBehaviorAMD
         }

instance Storable VkDeviceMemoryOverallocationCreateInfoAMD where
  sizeOf    _ = #{size      VkDeviceMemoryOverallocationCreateInfoAMD}
  alignment _ = #{alignment VkDeviceMemoryOverallocationCreateInfoAMD}

  peek ptr = 
    VkDeviceMemoryOverallocationCreateInfoAMD
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"overallocationBehavior" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"overallocationBehavior" ptr val

instance Offset "sType" VkDeviceMemoryOverallocationCreateInfoAMD where
  rawOffset = #{offset VkDeviceMemoryOverallocationCreateInfoAMD, sType}

instance Offset "pNext" VkDeviceMemoryOverallocationCreateInfoAMD where
  rawOffset = #{offset VkDeviceMemoryOverallocationCreateInfoAMD, pNext}

instance Offset "overallocationBehavior" VkDeviceMemoryOverallocationCreateInfoAMD where
  rawOffset = #{offset VkDeviceMemoryOverallocationCreateInfoAMD, overallocationBehavior}

#else

module Vulkan.Types.Struct.VkDeviceMemoryOverallocationCreateInfoAMD where

#endif