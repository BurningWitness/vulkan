{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_fragment_coverage_to_color

module Vulkan.Types.Struct.VkPipelineCoverageToColorStateCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkPipelineCoverageToColorStateCreateFlagsNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineCoverageToColorStateCreateInfoNV" #-} VkPipelineCoverageToColorStateCreateInfoNV =
       VkPipelineCoverageToColorStateCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineCoverageToColorStateCreateFlagsNV
         , coverageToColorEnable :: VkBool32
         , coverageToColorLocation :: #{type uint32_t}
         }

instance Storable VkPipelineCoverageToColorStateCreateInfoNV where
  sizeOf    _ = #{size      VkPipelineCoverageToColorStateCreateInfoNV}
  alignment _ = #{alignment VkPipelineCoverageToColorStateCreateInfoNV}

  peek ptr = 
    VkPipelineCoverageToColorStateCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"coverageToColorEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"coverageToColorLocation" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"coverageToColorEnable" ptr val
    pokeField @"coverageToColorLocation" ptr val

instance Offset "sType" VkPipelineCoverageToColorStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageToColorStateCreateInfoNV, sType}

instance Offset "pNext" VkPipelineCoverageToColorStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageToColorStateCreateInfoNV, pNext}

instance Offset "flags" VkPipelineCoverageToColorStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageToColorStateCreateInfoNV, flags}

instance Offset "coverageToColorEnable" VkPipelineCoverageToColorStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorEnable}

instance Offset "coverageToColorLocation" VkPipelineCoverageToColorStateCreateInfoNV where
  rawOffset = #{offset VkPipelineCoverageToColorStateCreateInfoNV, coverageToColorLocation}

#else

module Vulkan.Types.Struct.VkPipelineCoverageToColorStateCreateInfoNV where

#endif