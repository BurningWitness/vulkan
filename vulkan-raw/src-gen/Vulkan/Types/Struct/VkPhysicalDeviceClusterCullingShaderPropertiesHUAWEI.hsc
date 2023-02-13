{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_cluster_culling_shader

module Vulkan.Types.Struct.VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI" #-} VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI =
       VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxWorkGroupCount :: #{type uint32_t}
         , maxWorkGroupSize :: #{type uint32_t}
         , maxOutputClusterCount :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI where
  sizeOf    _ = #{size      VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI}
  alignment _ = #{alignment VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI}

  peek ptr = 
    VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxWorkGroupCount" ptr)
       <*> peek (offset @"maxWorkGroupSize" ptr)
       <*> peek (offset @"maxOutputClusterCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxWorkGroupCount" ptr val
    pokeField @"maxWorkGroupSize" ptr val
    pokeField @"maxOutputClusterCount" ptr val

instance Offset "sType" VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI, sType}

instance Offset "pNext" VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI, pNext}

instance Offset "maxWorkGroupCount" VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI, maxWorkGroupCount}

instance Offset "maxWorkGroupSize" VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI, maxWorkGroupSize}

instance Offset "maxOutputClusterCount" VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI, maxOutputClusterCount}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI where

#endif