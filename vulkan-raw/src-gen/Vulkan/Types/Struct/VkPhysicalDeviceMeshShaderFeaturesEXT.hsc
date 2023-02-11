{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_mesh_shader

module Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMeshShaderFeaturesEXT" #-} VkPhysicalDeviceMeshShaderFeaturesEXT =
       VkPhysicalDeviceMeshShaderFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , taskShader :: VkBool32
         , meshShader :: VkBool32
         , multiviewMeshShader :: VkBool32
         , primitiveFragmentShadingRateMeshShader :: VkBool32
         , meshShaderQueries :: VkBool32
         }

instance Storable VkPhysicalDeviceMeshShaderFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceMeshShaderFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceMeshShaderFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceMeshShaderFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"taskShader" ptr)
       <*> peek (offset @"meshShader" ptr)
       <*> peek (offset @"multiviewMeshShader" ptr)
       <*> peek (offset @"primitiveFragmentShadingRateMeshShader" ptr)
       <*> peek (offset @"meshShaderQueries" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"taskShader" ptr val
    pokeField @"meshShader" ptr val
    pokeField @"multiviewMeshShader" ptr val
    pokeField @"primitiveFragmentShadingRateMeshShader" ptr val
    pokeField @"meshShaderQueries" ptr val

instance Offset "sType" VkPhysicalDeviceMeshShaderFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceMeshShaderFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderFeaturesEXT, pNext}

instance Offset "taskShader" VkPhysicalDeviceMeshShaderFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderFeaturesEXT, taskShader}

instance Offset "meshShader" VkPhysicalDeviceMeshShaderFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderFeaturesEXT, meshShader}

instance Offset "multiviewMeshShader" VkPhysicalDeviceMeshShaderFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderFeaturesEXT, multiviewMeshShader}

instance Offset "primitiveFragmentShadingRateMeshShader" VkPhysicalDeviceMeshShaderFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderFeaturesEXT, primitiveFragmentShadingRateMeshShader}

instance Offset "meshShaderQueries" VkPhysicalDeviceMeshShaderFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderFeaturesEXT, meshShaderQueries}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderFeaturesEXT where

#endif