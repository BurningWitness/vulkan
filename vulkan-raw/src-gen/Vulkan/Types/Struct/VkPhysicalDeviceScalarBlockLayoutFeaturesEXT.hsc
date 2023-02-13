{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_scalar_block_layout

module Vulkan.Types.Struct.VkPhysicalDeviceScalarBlockLayoutFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceScalarBlockLayoutFeaturesEXT" #-} VkPhysicalDeviceScalarBlockLayoutFeaturesEXT =
       VkPhysicalDeviceScalarBlockLayoutFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , scalarBlockLayout :: VkBool32
         }

instance Storable VkPhysicalDeviceScalarBlockLayoutFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceScalarBlockLayoutFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceScalarBlockLayoutFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceScalarBlockLayoutFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"scalarBlockLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"scalarBlockLayout" ptr val

instance Offset "sType" VkPhysicalDeviceScalarBlockLayoutFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceScalarBlockLayoutFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceScalarBlockLayoutFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceScalarBlockLayoutFeaturesEXT, pNext}

instance Offset "scalarBlockLayout" VkPhysicalDeviceScalarBlockLayoutFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceScalarBlockLayoutFeaturesEXT, scalarBlockLayout}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceScalarBlockLayoutFeaturesEXT where

#endif