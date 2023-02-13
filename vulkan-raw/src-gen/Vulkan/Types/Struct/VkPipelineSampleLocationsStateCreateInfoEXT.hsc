{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sample_locations

module Vulkan.Types.Struct.VkPipelineSampleLocationsStateCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSampleLocationsInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineSampleLocationsStateCreateInfoEXT" #-} VkPipelineSampleLocationsStateCreateInfoEXT =
       VkPipelineSampleLocationsStateCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , sampleLocationsEnable :: VkBool32
         , sampleLocationsInfo :: VkSampleLocationsInfoEXT
         }

instance Storable VkPipelineSampleLocationsStateCreateInfoEXT where
  sizeOf    _ = #{size      VkPipelineSampleLocationsStateCreateInfoEXT}
  alignment _ = #{alignment VkPipelineSampleLocationsStateCreateInfoEXT}

  peek ptr = 
    VkPipelineSampleLocationsStateCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"sampleLocationsEnable" ptr)
       <*> peek (offset @"sampleLocationsInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"sampleLocationsEnable" ptr val
    pokeField @"sampleLocationsInfo" ptr val

instance Offset "sType" VkPipelineSampleLocationsStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineSampleLocationsStateCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineSampleLocationsStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineSampleLocationsStateCreateInfoEXT, pNext}

instance Offset "sampleLocationsEnable" VkPipelineSampleLocationsStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineSampleLocationsStateCreateInfoEXT, sampleLocationsEnable}

instance Offset "sampleLocationsInfo" VkPipelineSampleLocationsStateCreateInfoEXT where
  rawOffset = #{offset VkPipelineSampleLocationsStateCreateInfoEXT, sampleLocationsInfo}

#else

module Vulkan.Types.Struct.VkPipelineSampleLocationsStateCreateInfoEXT where

#endif