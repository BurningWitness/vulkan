{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_custom_border_color

module Vulkan.Types.Struct.VkPhysicalDeviceCustomBorderColorFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceCustomBorderColorFeaturesEXT" #-} VkPhysicalDeviceCustomBorderColorFeaturesEXT =
       VkPhysicalDeviceCustomBorderColorFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , customBorderColors :: VkBool32
         , customBorderColorWithoutFormat :: VkBool32
         }

instance Storable VkPhysicalDeviceCustomBorderColorFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceCustomBorderColorFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceCustomBorderColorFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceCustomBorderColorFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"customBorderColors" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"customBorderColorWithoutFormat" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"customBorderColors" ptr val
    pokeField @"customBorderColorWithoutFormat" ptr val

instance Offset "sType" VkPhysicalDeviceCustomBorderColorFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceCustomBorderColorFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceCustomBorderColorFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceCustomBorderColorFeaturesEXT, pNext}

instance Offset "customBorderColors" VkPhysicalDeviceCustomBorderColorFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceCustomBorderColorFeaturesEXT, customBorderColors}

instance Offset "customBorderColorWithoutFormat" VkPhysicalDeviceCustomBorderColorFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceCustomBorderColorFeaturesEXT, customBorderColorWithoutFormat}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceCustomBorderColorFeaturesEXT where

#endif