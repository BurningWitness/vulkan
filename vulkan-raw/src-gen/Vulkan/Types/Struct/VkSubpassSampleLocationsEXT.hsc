{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sample_locations

module Vulkan.Types.Struct.VkSubpassSampleLocationsEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkSampleLocationsInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassSampleLocationsEXT" #-} VkSubpassSampleLocationsEXT =
       VkSubpassSampleLocationsEXT
         { subpassIndex :: #{type uint32_t}
         , sampleLocationsInfo :: VkSampleLocationsInfoEXT
         }

instance Storable VkSubpassSampleLocationsEXT where
  sizeOf    _ = #{size      VkSubpassSampleLocationsEXT}
  alignment _ = #{alignment VkSubpassSampleLocationsEXT}

  peek ptr = 
    VkSubpassSampleLocationsEXT
       <$> peek (Foreign.Storable.Offset.offset @"subpassIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sampleLocationsInfo" ptr)

  poke ptr val = do
    pokeField @"subpassIndex" ptr val
    pokeField @"sampleLocationsInfo" ptr val

instance Offset "subpassIndex" VkSubpassSampleLocationsEXT where
  rawOffset = #{offset VkSubpassSampleLocationsEXT, subpassIndex}

instance Offset "sampleLocationsInfo" VkSubpassSampleLocationsEXT where
  rawOffset = #{offset VkSubpassSampleLocationsEXT, sampleLocationsInfo}

#else

module Vulkan.Types.Struct.VkSubpassSampleLocationsEXT where

#endif