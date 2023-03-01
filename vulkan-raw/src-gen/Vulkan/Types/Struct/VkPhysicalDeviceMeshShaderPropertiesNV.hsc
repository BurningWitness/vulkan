{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_mesh_shader

module Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMeshShaderPropertiesNV" #-} VkPhysicalDeviceMeshShaderPropertiesNV =
       VkPhysicalDeviceMeshShaderPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxDrawMeshTasksCount :: #{type uint32_t}
         , maxTaskWorkGroupInvocations :: #{type uint32_t}
         , maxTaskWorkGroupSize :: #{type uint32_t}
         , maxTaskTotalMemorySize :: #{type uint32_t}
         , maxTaskOutputCount :: #{type uint32_t}
         , maxMeshWorkGroupInvocations :: #{type uint32_t}
         , maxMeshWorkGroupSize :: #{type uint32_t}
         , maxMeshTotalMemorySize :: #{type uint32_t}
         , maxMeshOutputVertices :: #{type uint32_t}
         , maxMeshOutputPrimitives :: #{type uint32_t}
         , maxMeshMultiviewViewCount :: #{type uint32_t}
         , meshOutputPerVertexGranularity :: #{type uint32_t}
         , meshOutputPerPrimitiveGranularity :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceMeshShaderPropertiesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceMeshShaderPropertiesNV}
  alignment _ = #{alignment VkPhysicalDeviceMeshShaderPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceMeshShaderPropertiesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDrawMeshTasksCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxTaskWorkGroupInvocations" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxTaskWorkGroupSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxTaskTotalMemorySize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxTaskOutputCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshWorkGroupInvocations" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshWorkGroupSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshTotalMemorySize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshOutputVertices" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshOutputPrimitives" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshMultiviewViewCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"meshOutputPerVertexGranularity" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"meshOutputPerPrimitiveGranularity" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxDrawMeshTasksCount" ptr val
    pokeField @"maxTaskWorkGroupInvocations" ptr val
    pokeField @"maxTaskWorkGroupSize" ptr val
    pokeField @"maxTaskTotalMemorySize" ptr val
    pokeField @"maxTaskOutputCount" ptr val
    pokeField @"maxMeshWorkGroupInvocations" ptr val
    pokeField @"maxMeshWorkGroupSize" ptr val
    pokeField @"maxMeshTotalMemorySize" ptr val
    pokeField @"maxMeshOutputVertices" ptr val
    pokeField @"maxMeshOutputPrimitives" ptr val
    pokeField @"maxMeshMultiviewViewCount" ptr val
    pokeField @"meshOutputPerVertexGranularity" ptr val
    pokeField @"meshOutputPerPrimitiveGranularity" ptr val

instance Offset "sType" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, pNext}

instance Offset "maxDrawMeshTasksCount" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, maxDrawMeshTasksCount}

instance Offset "maxTaskWorkGroupInvocations" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, maxTaskWorkGroupInvocations}

instance Offset "maxTaskWorkGroupSize" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, maxTaskWorkGroupSize}

instance Offset "maxTaskTotalMemorySize" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, maxTaskTotalMemorySize}

instance Offset "maxTaskOutputCount" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, maxTaskOutputCount}

instance Offset "maxMeshWorkGroupInvocations" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, maxMeshWorkGroupInvocations}

instance Offset "maxMeshWorkGroupSize" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, maxMeshWorkGroupSize}

instance Offset "maxMeshTotalMemorySize" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, maxMeshTotalMemorySize}

instance Offset "maxMeshOutputVertices" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, maxMeshOutputVertices}

instance Offset "maxMeshOutputPrimitives" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, maxMeshOutputPrimitives}

instance Offset "maxMeshMultiviewViewCount" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, maxMeshMultiviewViewCount}

instance Offset "meshOutputPerVertexGranularity" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, meshOutputPerVertexGranularity}

instance Offset "meshOutputPerPrimitiveGranularity" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesNV, meshOutputPerPrimitiveGranularity}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderPropertiesNV where

#endif