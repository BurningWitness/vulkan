{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_custom_border_color

module Vulkan.Types.Struct.VkPhysicalDeviceCustomBorderColorPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceCustomBorderColorPropertiesEXT" #-} VkPhysicalDeviceCustomBorderColorPropertiesEXT =
       VkPhysicalDeviceCustomBorderColorPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxCustomBorderColorSamplers :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceCustomBorderColorPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceCustomBorderColorPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceCustomBorderColorPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceCustomBorderColorPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxCustomBorderColorSamplers" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxCustomBorderColorSamplers" ptr val

instance Offset "sType" VkPhysicalDeviceCustomBorderColorPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceCustomBorderColorPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceCustomBorderColorPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceCustomBorderColorPropertiesEXT, pNext}

instance Offset "maxCustomBorderColorSamplers" VkPhysicalDeviceCustomBorderColorPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceCustomBorderColorPropertiesEXT, maxCustomBorderColorSamplers}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceCustomBorderColorPropertiesEXT where

#endif