{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_dedicated_allocation_image_aliasing

module Vulkan.Types.Struct.VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV" #-} VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV =
       VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , dedicatedAllocationImageAliasing :: VkBool32
         }

instance Storable VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV where
  sizeOf    _ = #{size      struct VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"dedicatedAllocationImageAliasing" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dedicatedAllocationImageAliasing" ptr val

instance Offset "sType" VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV, pNext}

instance Offset "dedicatedAllocationImageAliasing" VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV, dedicatedAllocationImageAliasing}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV where

#endif