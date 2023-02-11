{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_2d_view_of_3d

module Vulkan.Types.Struct.VkPhysicalDeviceImage2DViewOf3DFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImage2DViewOf3DFeaturesEXT" #-} VkPhysicalDeviceImage2DViewOf3DFeaturesEXT =
       VkPhysicalDeviceImage2DViewOf3DFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image2DViewOf3D :: VkBool32
         , sampler2DViewOf3D :: VkBool32
         }

instance Storable VkPhysicalDeviceImage2DViewOf3DFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceImage2DViewOf3DFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceImage2DViewOf3DFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceImage2DViewOf3DFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"image2DViewOf3D" ptr)
       <*> peek (offset @"sampler2DViewOf3D" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image2DViewOf3D" ptr val
    pokeField @"sampler2DViewOf3D" ptr val

instance Offset "sType" VkPhysicalDeviceImage2DViewOf3DFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImage2DViewOf3DFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceImage2DViewOf3DFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImage2DViewOf3DFeaturesEXT, pNext}

instance Offset "image2DViewOf3D" VkPhysicalDeviceImage2DViewOf3DFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImage2DViewOf3DFeaturesEXT, image2DViewOf3D}

instance Offset "sampler2DViewOf3D" VkPhysicalDeviceImage2DViewOf3DFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImage2DViewOf3DFeaturesEXT, sampler2DViewOf3D}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImage2DViewOf3DFeaturesEXT where

#endif