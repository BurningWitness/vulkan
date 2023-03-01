{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_fragment_density_map_offset

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM" #-} VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM =
       VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fragmentDensityMapOffset :: VkBool32
         }

instance Storable VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM where
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM}
  alignment _ = #{alignment VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM}

  peek ptr = 
    VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fragmentDensityMapOffset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentDensityMapOffset" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM, pNext}

instance Offset "fragmentDensityMapOffset" VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM, fragmentDensityMapOffset}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM where

#endif