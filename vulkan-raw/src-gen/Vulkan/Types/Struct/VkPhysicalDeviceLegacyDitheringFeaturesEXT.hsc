{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_legacy_dithering

module Vulkan.Types.Struct.VkPhysicalDeviceLegacyDitheringFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceLegacyDitheringFeaturesEXT" #-} VkPhysicalDeviceLegacyDitheringFeaturesEXT =
       VkPhysicalDeviceLegacyDitheringFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , legacyDithering :: VkBool32
         }

instance Storable VkPhysicalDeviceLegacyDitheringFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceLegacyDitheringFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceLegacyDitheringFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceLegacyDitheringFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"legacyDithering" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"legacyDithering" ptr val

instance Offset "sType" VkPhysicalDeviceLegacyDitheringFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceLegacyDitheringFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceLegacyDitheringFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceLegacyDitheringFeaturesEXT, pNext}

instance Offset "legacyDithering" VkPhysicalDeviceLegacyDitheringFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceLegacyDitheringFeaturesEXT, legacyDithering}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceLegacyDitheringFeaturesEXT where

#endif