{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Struct.VkPhysicalDeviceOpacityMicromapPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceOpacityMicromapPropertiesEXT" #-} VkPhysicalDeviceOpacityMicromapPropertiesEXT =
       VkPhysicalDeviceOpacityMicromapPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxOpacity2StateSubdivisionLevel :: #{type uint32_t}
         , maxOpacity4StateSubdivisionLevel :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceOpacityMicromapPropertiesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceOpacityMicromapPropertiesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceOpacityMicromapPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceOpacityMicromapPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxOpacity2StateSubdivisionLevel" ptr)
       <*> peek (offset @"maxOpacity4StateSubdivisionLevel" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxOpacity2StateSubdivisionLevel" ptr val
    pokeField @"maxOpacity4StateSubdivisionLevel" ptr val

instance Offset "sType" VkPhysicalDeviceOpacityMicromapPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceOpacityMicromapPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceOpacityMicromapPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceOpacityMicromapPropertiesEXT, pNext}

instance Offset "maxOpacity2StateSubdivisionLevel" VkPhysicalDeviceOpacityMicromapPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceOpacityMicromapPropertiesEXT, maxOpacity2StateSubdivisionLevel}

instance Offset "maxOpacity4StateSubdivisionLevel" VkPhysicalDeviceOpacityMicromapPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceOpacityMicromapPropertiesEXT, maxOpacity4StateSubdivisionLevel}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceOpacityMicromapPropertiesEXT where

#endif