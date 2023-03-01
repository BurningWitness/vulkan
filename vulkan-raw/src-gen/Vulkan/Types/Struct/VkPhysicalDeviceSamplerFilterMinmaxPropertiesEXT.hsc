{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sampler_filter_minmax

module Vulkan.Types.Struct.VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT" #-} VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT =
       VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , filterMinmaxSingleComponentFormats :: VkBool32
         , filterMinmaxImageComponentMapping :: VkBool32
         }

instance Storable VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"filterMinmaxSingleComponentFormats" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"filterMinmaxImageComponentMapping" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"filterMinmaxSingleComponentFormats" ptr val
    pokeField @"filterMinmaxImageComponentMapping" ptr val

instance Offset "sType" VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, pNext}

instance Offset "filterMinmaxSingleComponentFormats" VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, filterMinmaxSingleComponentFormats}

instance Offset "filterMinmaxImageComponentMapping" VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, filterMinmaxImageComponentMapping}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT where

#endif