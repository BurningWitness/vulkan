{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_fragment_density_map

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMapPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentDensityMapPropertiesEXT" #-} VkPhysicalDeviceFragmentDensityMapPropertiesEXT =
       VkPhysicalDeviceFragmentDensityMapPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , minFragmentDensityTexelSize :: VkExtent2D
         , maxFragmentDensityTexelSize :: VkExtent2D
         , fragmentDensityInvocations :: VkBool32
         }

instance Storable VkPhysicalDeviceFragmentDensityMapPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentDensityMapPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceFragmentDensityMapPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceFragmentDensityMapPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"minFragmentDensityTexelSize" ptr)
       <*> peek (offset @"maxFragmentDensityTexelSize" ptr)
       <*> peek (offset @"fragmentDensityInvocations" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"minFragmentDensityTexelSize" ptr val
    pokeField @"maxFragmentDensityTexelSize" ptr val
    pokeField @"fragmentDensityInvocations" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentDensityMapPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentDensityMapPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapPropertiesEXT, pNext}

instance Offset "minFragmentDensityTexelSize" VkPhysicalDeviceFragmentDensityMapPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapPropertiesEXT, minFragmentDensityTexelSize}

instance Offset "maxFragmentDensityTexelSize" VkPhysicalDeviceFragmentDensityMapPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapPropertiesEXT, maxFragmentDensityTexelSize}

instance Offset "fragmentDensityInvocations" VkPhysicalDeviceFragmentDensityMapPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentDensityMapPropertiesEXT, fragmentDensityInvocations}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentDensityMapPropertiesEXT where

#endif