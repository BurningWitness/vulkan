{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_non_seamless_cube_map

module Vulkan.Types.Struct.VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT" #-} VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT =
       VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , nonSeamlessCubeMap :: VkBool32
         }

instance Storable VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"nonSeamlessCubeMap" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"nonSeamlessCubeMap" ptr val

instance Offset "sType" VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT, pNext}

instance Offset "nonSeamlessCubeMap" VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT, nonSeamlessCubeMap}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT where

#endif