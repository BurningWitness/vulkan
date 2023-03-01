{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_fragment_density_map2

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMap2FeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentDensityMap2FeaturesEXT" #-} VkPhysicalDeviceFragmentDensityMap2FeaturesEXT =
       VkPhysicalDeviceFragmentDensityMap2FeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fragmentDensityMapDeferred :: VkBool32
         }

instance Storable VkPhysicalDeviceFragmentDensityMap2FeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentDensityMap2FeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceFragmentDensityMap2FeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceFragmentDensityMap2FeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fragmentDensityMapDeferred" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentDensityMapDeferred" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentDensityMap2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMap2FeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentDensityMap2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMap2FeaturesEXT, pNext}

instance Offset "fragmentDensityMapDeferred" VkPhysicalDeviceFragmentDensityMap2FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMap2FeaturesEXT, fragmentDensityMapDeferred}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMap2FeaturesEXT where

#endif