{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_image_processing

module Vulkan.Types.Struct.VkImageViewSampleWeightCreateInfoQCOM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D
import Vulkan.Types.Struct.VkOffset2D



data {-# CTYPE "vulkan/vulkan.h" "VkImageViewSampleWeightCreateInfoQCOM" #-} VkImageViewSampleWeightCreateInfoQCOM =
       VkImageViewSampleWeightCreateInfoQCOM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , filterCenter :: VkOffset2D
         , filterSize :: VkExtent2D
         , numPhases :: #{type uint32_t}
         }

instance Storable VkImageViewSampleWeightCreateInfoQCOM where
  sizeOf    _ = #{size      VkImageViewSampleWeightCreateInfoQCOM}
  alignment _ = #{alignment VkImageViewSampleWeightCreateInfoQCOM}

  peek ptr = 
    VkImageViewSampleWeightCreateInfoQCOM
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"filterCenter" ptr)
       <*> peek (offset @"filterSize" ptr)
       <*> peek (offset @"numPhases" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"filterCenter" ptr val
    pokeField @"filterSize" ptr val
    pokeField @"numPhases" ptr val

instance Offset "sType" VkImageViewSampleWeightCreateInfoQCOM where
  rawOffset = #{offset VkImageViewSampleWeightCreateInfoQCOM, sType}

instance Offset "pNext" VkImageViewSampleWeightCreateInfoQCOM where
  rawOffset = #{offset VkImageViewSampleWeightCreateInfoQCOM, pNext}

instance Offset "filterCenter" VkImageViewSampleWeightCreateInfoQCOM where
  rawOffset = #{offset VkImageViewSampleWeightCreateInfoQCOM, filterCenter}

instance Offset "filterSize" VkImageViewSampleWeightCreateInfoQCOM where
  rawOffset = #{offset VkImageViewSampleWeightCreateInfoQCOM, filterSize}

instance Offset "numPhases" VkImageViewSampleWeightCreateInfoQCOM where
  rawOffset = #{offset VkImageViewSampleWeightCreateInfoQCOM, numPhases}

#else

module Vulkan.Types.Struct.VkImageViewSampleWeightCreateInfoQCOM where

#endif