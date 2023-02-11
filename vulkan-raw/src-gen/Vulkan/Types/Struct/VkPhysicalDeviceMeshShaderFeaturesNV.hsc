{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_mesh_shader

module Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMeshShaderFeaturesNV" #-} VkPhysicalDeviceMeshShaderFeaturesNV =
       VkPhysicalDeviceMeshShaderFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , taskShader :: VkBool32
         , meshShader :: VkBool32
         }

instance Storable VkPhysicalDeviceMeshShaderFeaturesNV where
  sizeOf    _ = #{size      struct VkPhysicalDeviceMeshShaderFeaturesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceMeshShaderFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceMeshShaderFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"taskShader" ptr)
       <*> peek (offset @"meshShader" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"taskShader" ptr val
    pokeField @"meshShader" ptr val

instance Offset "sType" VkPhysicalDeviceMeshShaderFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceMeshShaderFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderFeaturesNV, pNext}

instance Offset "taskShader" VkPhysicalDeviceMeshShaderFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderFeaturesNV, taskShader}

instance Offset "meshShader" VkPhysicalDeviceMeshShaderFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderFeaturesNV, meshShader}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderFeaturesNV where

#endif