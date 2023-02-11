{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceSamplerFilterMinmaxProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSamplerFilterMinmaxProperties" #-} VkPhysicalDeviceSamplerFilterMinmaxProperties =
       VkPhysicalDeviceSamplerFilterMinmaxProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , filterMinmaxSingleComponentFormats :: VkBool32
         , filterMinmaxImageComponentMapping :: VkBool32
         }

instance Storable VkPhysicalDeviceSamplerFilterMinmaxProperties where
  sizeOf    _ = #{size      struct VkPhysicalDeviceSamplerFilterMinmaxProperties}
  alignment _ = #{alignment struct VkPhysicalDeviceSamplerFilterMinmaxProperties}

  peek ptr = 
    VkPhysicalDeviceSamplerFilterMinmaxProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"filterMinmaxSingleComponentFormats" ptr)
       <*> peek (offset @"filterMinmaxImageComponentMapping" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"filterMinmaxSingleComponentFormats" ptr val
    pokeField @"filterMinmaxImageComponentMapping" ptr val

instance Offset "sType" VkPhysicalDeviceSamplerFilterMinmaxProperties where
  rawOffset = #{offset struct VkPhysicalDeviceSamplerFilterMinmaxProperties, sType}

instance Offset "pNext" VkPhysicalDeviceSamplerFilterMinmaxProperties where
  rawOffset = #{offset struct VkPhysicalDeviceSamplerFilterMinmaxProperties, pNext}

instance Offset "filterMinmaxSingleComponentFormats" VkPhysicalDeviceSamplerFilterMinmaxProperties where
  rawOffset = #{offset struct VkPhysicalDeviceSamplerFilterMinmaxProperties, filterMinmaxSingleComponentFormats}

instance Offset "filterMinmaxImageComponentMapping" VkPhysicalDeviceSamplerFilterMinmaxProperties where
  rawOffset = #{offset struct VkPhysicalDeviceSamplerFilterMinmaxProperties, filterMinmaxImageComponentMapping}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSamplerFilterMinmaxProperties where

#endif