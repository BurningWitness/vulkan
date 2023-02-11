{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_multi_draw

module Vulkan.Types.Struct.VkPhysicalDeviceMultiDrawFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMultiDrawFeaturesEXT" #-} VkPhysicalDeviceMultiDrawFeaturesEXT =
       VkPhysicalDeviceMultiDrawFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , multiDraw :: VkBool32
         }

instance Storable VkPhysicalDeviceMultiDrawFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceMultiDrawFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceMultiDrawFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceMultiDrawFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"multiDraw" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"multiDraw" ptr val

instance Offset "sType" VkPhysicalDeviceMultiDrawFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMultiDrawFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceMultiDrawFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMultiDrawFeaturesEXT, pNext}

instance Offset "multiDraw" VkPhysicalDeviceMultiDrawFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMultiDrawFeaturesEXT, multiDraw}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMultiDrawFeaturesEXT where

#endif