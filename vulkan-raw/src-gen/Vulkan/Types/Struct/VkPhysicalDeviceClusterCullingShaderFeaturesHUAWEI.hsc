{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_cluster_culling_shader

module Vulkan.Types.Struct.VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI" #-} VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI =
       VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , clustercullingShader :: VkBool32
         , multiviewClusterCullingShader :: VkBool32
         }

instance Storable VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI where
  sizeOf    _ = #{size      VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI}
  alignment _ = #{alignment VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI}

  peek ptr = 
    VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"clustercullingShader" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"multiviewClusterCullingShader" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"clustercullingShader" ptr val
    pokeField @"multiviewClusterCullingShader" ptr val

instance Offset "sType" VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI, sType}

instance Offset "pNext" VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI, pNext}

instance Offset "clustercullingShader" VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI, clustercullingShader}

instance Offset "multiviewClusterCullingShader" VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI, multiviewClusterCullingShader}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI where

#endif