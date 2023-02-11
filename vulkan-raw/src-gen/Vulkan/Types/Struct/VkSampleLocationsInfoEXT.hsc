{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sample_locations

module Vulkan.Types.Struct.VkSampleLocationsInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D
import Vulkan.Types.Struct.VkSampleLocationEXT



data {-# CTYPE "vulkan/vulkan.h" "VkSampleLocationsInfoEXT" #-} VkSampleLocationsInfoEXT =
       VkSampleLocationsInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , sampleLocationsPerPixel :: VkSampleCountFlagBits
         , sampleLocationGridSize :: VkExtent2D
         , sampleLocationsCount :: #{type uint32_t}
         , pSampleLocations :: Ptr VkSampleLocationEXT
         }

instance Storable VkSampleLocationsInfoEXT where
  sizeOf    _ = #{size      struct VkSampleLocationsInfoEXT}
  alignment _ = #{alignment struct VkSampleLocationsInfoEXT}

  peek ptr = 
    VkSampleLocationsInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"sampleLocationsPerPixel" ptr)
       <*> peek (offset @"sampleLocationGridSize" ptr)
       <*> peek (offset @"sampleLocationsCount" ptr)
       <*> peek (offset @"pSampleLocations" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"sampleLocationsPerPixel" ptr val
    pokeField @"sampleLocationGridSize" ptr val
    pokeField @"sampleLocationsCount" ptr val
    pokeField @"pSampleLocations" ptr val

instance Offset "sType" VkSampleLocationsInfoEXT where
  rawOffset = #{offset struct VkSampleLocationsInfoEXT, sType}

instance Offset "pNext" VkSampleLocationsInfoEXT where
  rawOffset = #{offset struct VkSampleLocationsInfoEXT, pNext}

instance Offset "sampleLocationsPerPixel" VkSampleLocationsInfoEXT where
  rawOffset = #{offset struct VkSampleLocationsInfoEXT, sampleLocationsPerPixel}

instance Offset "sampleLocationGridSize" VkSampleLocationsInfoEXT where
  rawOffset = #{offset struct VkSampleLocationsInfoEXT, sampleLocationGridSize}

instance Offset "sampleLocationsCount" VkSampleLocationsInfoEXT where
  rawOffset = #{offset struct VkSampleLocationsInfoEXT, sampleLocationsCount}

instance Offset "pSampleLocations" VkSampleLocationsInfoEXT where
  rawOffset = #{offset struct VkSampleLocationsInfoEXT, pSampleLocations}

#else

module Vulkan.Types.Struct.VkSampleLocationsInfoEXT where

#endif