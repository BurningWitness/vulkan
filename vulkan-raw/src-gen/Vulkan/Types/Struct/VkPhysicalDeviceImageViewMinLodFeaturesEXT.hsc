{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_view_min_lod

module Vulkan.Types.Struct.VkPhysicalDeviceImageViewMinLodFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImageViewMinLodFeaturesEXT" #-} VkPhysicalDeviceImageViewMinLodFeaturesEXT =
       VkPhysicalDeviceImageViewMinLodFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , minLod :: VkBool32
         }

instance Storable VkPhysicalDeviceImageViewMinLodFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceImageViewMinLodFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceImageViewMinLodFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceImageViewMinLodFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"minLod" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"minLod" ptr val

instance Offset "sType" VkPhysicalDeviceImageViewMinLodFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImageViewMinLodFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceImageViewMinLodFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImageViewMinLodFeaturesEXT, pNext}

instance Offset "minLod" VkPhysicalDeviceImageViewMinLodFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImageViewMinLodFeaturesEXT, minLod}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImageViewMinLodFeaturesEXT where

#endif