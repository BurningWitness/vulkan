{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_coverage_reduction_mode

module Vulkan.Types.Struct.VkPhysicalDeviceCoverageReductionModeFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceCoverageReductionModeFeaturesNV" #-} VkPhysicalDeviceCoverageReductionModeFeaturesNV =
       VkPhysicalDeviceCoverageReductionModeFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , coverageReductionMode :: VkBool32
         }

instance Storable VkPhysicalDeviceCoverageReductionModeFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceCoverageReductionModeFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceCoverageReductionModeFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceCoverageReductionModeFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"coverageReductionMode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"coverageReductionMode" ptr val

instance Offset "sType" VkPhysicalDeviceCoverageReductionModeFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCoverageReductionModeFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceCoverageReductionModeFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCoverageReductionModeFeaturesNV, pNext}

instance Offset "coverageReductionMode" VkPhysicalDeviceCoverageReductionModeFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCoverageReductionModeFeaturesNV, coverageReductionMode}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceCoverageReductionModeFeaturesNV where

#endif