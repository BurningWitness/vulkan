{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRayTracingPropertiesNV" #-} VkPhysicalDeviceRayTracingPropertiesNV =
       VkPhysicalDeviceRayTracingPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderGroupHandleSize :: #{type uint32_t}
         , maxRecursionDepth :: #{type uint32_t}
         , maxShaderGroupStride :: #{type uint32_t}
         , shaderGroupBaseAlignment :: #{type uint32_t}
         , maxGeometryCount :: #{type uint64_t}
         , maxInstanceCount :: #{type uint64_t}
         , maxTriangleCount :: #{type uint64_t}
         , maxDescriptorSetAccelerationStructures :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceRayTracingPropertiesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceRayTracingPropertiesNV}
  alignment _ = #{alignment VkPhysicalDeviceRayTracingPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceRayTracingPropertiesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderGroupHandleSize" ptr)
       <*> peek (offset @"maxRecursionDepth" ptr)
       <*> peek (offset @"maxShaderGroupStride" ptr)
       <*> peek (offset @"shaderGroupBaseAlignment" ptr)
       <*> peek (offset @"maxGeometryCount" ptr)
       <*> peek (offset @"maxInstanceCount" ptr)
       <*> peek (offset @"maxTriangleCount" ptr)
       <*> peek (offset @"maxDescriptorSetAccelerationStructures" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderGroupHandleSize" ptr val
    pokeField @"maxRecursionDepth" ptr val
    pokeField @"maxShaderGroupStride" ptr val
    pokeField @"shaderGroupBaseAlignment" ptr val
    pokeField @"maxGeometryCount" ptr val
    pokeField @"maxInstanceCount" ptr val
    pokeField @"maxTriangleCount" ptr val
    pokeField @"maxDescriptorSetAccelerationStructures" ptr val

instance Offset "sType" VkPhysicalDeviceRayTracingPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceRayTracingPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingPropertiesNV, pNext}

instance Offset "shaderGroupHandleSize" VkPhysicalDeviceRayTracingPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingPropertiesNV, shaderGroupHandleSize}

instance Offset "maxRecursionDepth" VkPhysicalDeviceRayTracingPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingPropertiesNV, maxRecursionDepth}

instance Offset "maxShaderGroupStride" VkPhysicalDeviceRayTracingPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingPropertiesNV, maxShaderGroupStride}

instance Offset "shaderGroupBaseAlignment" VkPhysicalDeviceRayTracingPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingPropertiesNV, shaderGroupBaseAlignment}

instance Offset "maxGeometryCount" VkPhysicalDeviceRayTracingPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingPropertiesNV, maxGeometryCount}

instance Offset "maxInstanceCount" VkPhysicalDeviceRayTracingPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingPropertiesNV, maxInstanceCount}

instance Offset "maxTriangleCount" VkPhysicalDeviceRayTracingPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingPropertiesNV, maxTriangleCount}

instance Offset "maxDescriptorSetAccelerationStructures" VkPhysicalDeviceRayTracingPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingPropertiesNV, maxDescriptorSetAccelerationStructures}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingPropertiesNV where

#endif