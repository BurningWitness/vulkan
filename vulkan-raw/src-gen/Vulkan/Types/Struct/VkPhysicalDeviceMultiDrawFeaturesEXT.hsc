{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPhysicalDeviceMultiDrawFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceMultiDrawFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceMultiDrawFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"multiDraw" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"multiDraw" ptr val

instance Offset "sType" VkPhysicalDeviceMultiDrawFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceMultiDrawFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceMultiDrawFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceMultiDrawFeaturesEXT, pNext}

instance Offset "multiDraw" VkPhysicalDeviceMultiDrawFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceMultiDrawFeaturesEXT, multiDraw}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMultiDrawFeaturesEXT where

#endif