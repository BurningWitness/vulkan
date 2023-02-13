{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sample_locations

module Vulkan.Types.Struct.VkPhysicalDeviceSampleLocationsPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkSampleCountFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSampleLocationsPropertiesEXT" #-} VkPhysicalDeviceSampleLocationsPropertiesEXT =
       VkPhysicalDeviceSampleLocationsPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , sampleLocationSampleCounts :: VkSampleCountFlags
         , maxSampleLocationGridSize :: VkExtent2D
         , sampleLocationCoordinateRange :: #{type float}
         , sampleLocationSubPixelBits :: #{type uint32_t}
         , variableSampleLocations :: VkBool32
         }

instance Storable VkPhysicalDeviceSampleLocationsPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceSampleLocationsPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceSampleLocationsPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceSampleLocationsPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"sampleLocationSampleCounts" ptr)
       <*> peek (offset @"maxSampleLocationGridSize" ptr)
       <*> peek (offset @"sampleLocationCoordinateRange" ptr)
       <*> peek (offset @"sampleLocationSubPixelBits" ptr)
       <*> peek (offset @"variableSampleLocations" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"sampleLocationSampleCounts" ptr val
    pokeField @"maxSampleLocationGridSize" ptr val
    pokeField @"sampleLocationCoordinateRange" ptr val
    pokeField @"sampleLocationSubPixelBits" ptr val
    pokeField @"variableSampleLocations" ptr val

instance Offset "sType" VkPhysicalDeviceSampleLocationsPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSampleLocationsPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceSampleLocationsPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSampleLocationsPropertiesEXT, pNext}

instance Offset "sampleLocationSampleCounts" VkPhysicalDeviceSampleLocationsPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSampleLocationsPropertiesEXT, sampleLocationSampleCounts}

instance Offset "maxSampleLocationGridSize" VkPhysicalDeviceSampleLocationsPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSampleLocationsPropertiesEXT, maxSampleLocationGridSize}

instance Offset "sampleLocationCoordinateRange" VkPhysicalDeviceSampleLocationsPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSampleLocationsPropertiesEXT, sampleLocationCoordinateRange}

instance Offset "sampleLocationSubPixelBits" VkPhysicalDeviceSampleLocationsPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSampleLocationsPropertiesEXT, sampleLocationSubPixelBits}

instance Offset "variableSampleLocations" VkPhysicalDeviceSampleLocationsPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSampleLocationsPropertiesEXT, variableSampleLocations}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSampleLocationsPropertiesEXT where

#endif