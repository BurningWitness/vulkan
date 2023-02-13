{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_fragment_density_map_offset

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM" #-} VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM =
       VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fragmentDensityOffsetGranularity :: VkExtent2D
         }

instance Storable VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM where
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM}
  alignment _ = #{alignment VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM}

  peek ptr = 
    VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fragmentDensityOffsetGranularity" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentDensityOffsetGranularity" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM, pNext}

instance Offset "fragmentDensityOffsetGranularity" VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM, fragmentDensityOffsetGranularity}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM where

#endif