{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_fragment_density_map

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMapFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentDensityMapFeaturesEXT" #-} VkPhysicalDeviceFragmentDensityMapFeaturesEXT =
       VkPhysicalDeviceFragmentDensityMapFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fragmentDensityMap :: VkBool32
         , fragmentDensityMapDynamic :: VkBool32
         , fragmentDensityMapNonSubsampledImages :: VkBool32
         }

instance Storable VkPhysicalDeviceFragmentDensityMapFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentDensityMapFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceFragmentDensityMapFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceFragmentDensityMapFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fragmentDensityMap" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fragmentDensityMapDynamic" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fragmentDensityMapNonSubsampledImages" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentDensityMap" ptr val
    pokeField @"fragmentDensityMapDynamic" ptr val
    pokeField @"fragmentDensityMapNonSubsampledImages" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentDensityMapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentDensityMapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapFeaturesEXT, pNext}

instance Offset "fragmentDensityMap" VkPhysicalDeviceFragmentDensityMapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapFeaturesEXT, fragmentDensityMap}

instance Offset "fragmentDensityMapDynamic" VkPhysicalDeviceFragmentDensityMapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapFeaturesEXT, fragmentDensityMapDynamic}

instance Offset "fragmentDensityMapNonSubsampledImages" VkPhysicalDeviceFragmentDensityMapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapFeaturesEXT, fragmentDensityMapNonSubsampledImages}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMapFeaturesEXT where

#endif