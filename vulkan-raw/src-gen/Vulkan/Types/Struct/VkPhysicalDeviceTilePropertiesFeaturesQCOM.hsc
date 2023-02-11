{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_tile_properties

module Vulkan.Types.Struct.VkPhysicalDeviceTilePropertiesFeaturesQCOM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceTilePropertiesFeaturesQCOM" #-} VkPhysicalDeviceTilePropertiesFeaturesQCOM =
       VkPhysicalDeviceTilePropertiesFeaturesQCOM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , tileProperties :: VkBool32
         }

instance Storable VkPhysicalDeviceTilePropertiesFeaturesQCOM where
  sizeOf    _ = #{size      struct VkPhysicalDeviceTilePropertiesFeaturesQCOM}
  alignment _ = #{alignment struct VkPhysicalDeviceTilePropertiesFeaturesQCOM}

  peek ptr = 
    VkPhysicalDeviceTilePropertiesFeaturesQCOM
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"tileProperties" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"tileProperties" ptr val

instance Offset "sType" VkPhysicalDeviceTilePropertiesFeaturesQCOM where
  rawOffset = #{offset struct VkPhysicalDeviceTilePropertiesFeaturesQCOM, sType}

instance Offset "pNext" VkPhysicalDeviceTilePropertiesFeaturesQCOM where
  rawOffset = #{offset struct VkPhysicalDeviceTilePropertiesFeaturesQCOM, pNext}

instance Offset "tileProperties" VkPhysicalDeviceTilePropertiesFeaturesQCOM where
  rawOffset = #{offset struct VkPhysicalDeviceTilePropertiesFeaturesQCOM, tileProperties}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTilePropertiesFeaturesQCOM where

#endif