{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_shader_image_footprint

module Vulkan.Types.Struct.VkPhysicalDeviceShaderImageFootprintFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderImageFootprintFeaturesNV" #-} VkPhysicalDeviceShaderImageFootprintFeaturesNV =
       VkPhysicalDeviceShaderImageFootprintFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageFootprint :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderImageFootprintFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderImageFootprintFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceShaderImageFootprintFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceShaderImageFootprintFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageFootprint" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageFootprint" ptr val

instance Offset "sType" VkPhysicalDeviceShaderImageFootprintFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceShaderImageFootprintFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceShaderImageFootprintFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceShaderImageFootprintFeaturesNV, pNext}

instance Offset "imageFootprint" VkPhysicalDeviceShaderImageFootprintFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceShaderImageFootprintFeaturesNV, imageFootprint}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderImageFootprintFeaturesNV where

#endif