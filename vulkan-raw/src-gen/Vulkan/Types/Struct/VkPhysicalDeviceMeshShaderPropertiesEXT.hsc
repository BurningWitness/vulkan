{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_mesh_shader

module Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMeshShaderPropertiesEXT" #-} VkPhysicalDeviceMeshShaderPropertiesEXT =
       VkPhysicalDeviceMeshShaderPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxTaskWorkGroupTotalCount :: #{type uint32_t}
         , maxTaskWorkGroupCount :: #{type uint32_t}
         , maxTaskWorkGroupInvocations :: #{type uint32_t}
         , maxTaskWorkGroupSize :: #{type uint32_t}
         , maxTaskPayloadSize :: #{type uint32_t}
         , maxTaskSharedMemorySize :: #{type uint32_t}
         , maxTaskPayloadAndSharedMemorySize :: #{type uint32_t}
         , maxMeshWorkGroupTotalCount :: #{type uint32_t}
         , maxMeshWorkGroupCount :: #{type uint32_t}
         , maxMeshWorkGroupInvocations :: #{type uint32_t}
         , maxMeshWorkGroupSize :: #{type uint32_t}
         , maxMeshSharedMemorySize :: #{type uint32_t}
         , maxMeshPayloadAndSharedMemorySize :: #{type uint32_t}
         , maxMeshOutputMemorySize :: #{type uint32_t}
         , maxMeshPayloadAndOutputMemorySize :: #{type uint32_t}
         , maxMeshOutputComponents :: #{type uint32_t}
         , maxMeshOutputVertices :: #{type uint32_t}
         , maxMeshOutputPrimitives :: #{type uint32_t}
         , maxMeshOutputLayers :: #{type uint32_t}
         , maxMeshMultiviewViewCount :: #{type uint32_t}
         , meshOutputPerVertexGranularity :: #{type uint32_t}
         , meshOutputPerPrimitiveGranularity :: #{type uint32_t}
         , maxPreferredTaskWorkGroupInvocations :: #{type uint32_t}
         , maxPreferredMeshWorkGroupInvocations :: #{type uint32_t}
         , prefersLocalInvocationVertexOutput :: VkBool32
         , prefersLocalInvocationPrimitiveOutput :: VkBool32
         , prefersCompactVertexOutput :: VkBool32
         , prefersCompactPrimitiveOutput :: VkBool32
         }

instance Storable VkPhysicalDeviceMeshShaderPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceMeshShaderPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceMeshShaderPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceMeshShaderPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxTaskWorkGroupTotalCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxTaskWorkGroupCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxTaskWorkGroupInvocations" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxTaskWorkGroupSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxTaskPayloadSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxTaskSharedMemorySize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxTaskPayloadAndSharedMemorySize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshWorkGroupTotalCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshWorkGroupCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshWorkGroupInvocations" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshWorkGroupSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshSharedMemorySize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshPayloadAndSharedMemorySize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshOutputMemorySize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshPayloadAndOutputMemorySize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshOutputComponents" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshOutputVertices" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshOutputPrimitives" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshOutputLayers" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxMeshMultiviewViewCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"meshOutputPerVertexGranularity" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"meshOutputPerPrimitiveGranularity" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPreferredTaskWorkGroupInvocations" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPreferredMeshWorkGroupInvocations" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"prefersLocalInvocationVertexOutput" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"prefersLocalInvocationPrimitiveOutput" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"prefersCompactVertexOutput" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"prefersCompactPrimitiveOutput" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxTaskWorkGroupTotalCount" ptr val
    pokeField @"maxTaskWorkGroupCount" ptr val
    pokeField @"maxTaskWorkGroupInvocations" ptr val
    pokeField @"maxTaskWorkGroupSize" ptr val
    pokeField @"maxTaskPayloadSize" ptr val
    pokeField @"maxTaskSharedMemorySize" ptr val
    pokeField @"maxTaskPayloadAndSharedMemorySize" ptr val
    pokeField @"maxMeshWorkGroupTotalCount" ptr val
    pokeField @"maxMeshWorkGroupCount" ptr val
    pokeField @"maxMeshWorkGroupInvocations" ptr val
    pokeField @"maxMeshWorkGroupSize" ptr val
    pokeField @"maxMeshSharedMemorySize" ptr val
    pokeField @"maxMeshPayloadAndSharedMemorySize" ptr val
    pokeField @"maxMeshOutputMemorySize" ptr val
    pokeField @"maxMeshPayloadAndOutputMemorySize" ptr val
    pokeField @"maxMeshOutputComponents" ptr val
    pokeField @"maxMeshOutputVertices" ptr val
    pokeField @"maxMeshOutputPrimitives" ptr val
    pokeField @"maxMeshOutputLayers" ptr val
    pokeField @"maxMeshMultiviewViewCount" ptr val
    pokeField @"meshOutputPerVertexGranularity" ptr val
    pokeField @"meshOutputPerPrimitiveGranularity" ptr val
    pokeField @"maxPreferredTaskWorkGroupInvocations" ptr val
    pokeField @"maxPreferredMeshWorkGroupInvocations" ptr val
    pokeField @"prefersLocalInvocationVertexOutput" ptr val
    pokeField @"prefersLocalInvocationPrimitiveOutput" ptr val
    pokeField @"prefersCompactVertexOutput" ptr val
    pokeField @"prefersCompactPrimitiveOutput" ptr val

instance Offset "sType" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, pNext}

instance Offset "maxTaskWorkGroupTotalCount" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskWorkGroupTotalCount}

instance Offset "maxTaskWorkGroupCount" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskWorkGroupCount}

instance Offset "maxTaskWorkGroupInvocations" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskWorkGroupInvocations}

instance Offset "maxTaskWorkGroupSize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskWorkGroupSize}

instance Offset "maxTaskPayloadSize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskPayloadSize}

instance Offset "maxTaskSharedMemorySize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskSharedMemorySize}

instance Offset "maxTaskPayloadAndSharedMemorySize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskPayloadAndSharedMemorySize}

instance Offset "maxMeshWorkGroupTotalCount" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshWorkGroupTotalCount}

instance Offset "maxMeshWorkGroupCount" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshWorkGroupCount}

instance Offset "maxMeshWorkGroupInvocations" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshWorkGroupInvocations}

instance Offset "maxMeshWorkGroupSize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshWorkGroupSize}

instance Offset "maxMeshSharedMemorySize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshSharedMemorySize}

instance Offset "maxMeshPayloadAndSharedMemorySize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshPayloadAndSharedMemorySize}

instance Offset "maxMeshOutputMemorySize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshOutputMemorySize}

instance Offset "maxMeshPayloadAndOutputMemorySize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshPayloadAndOutputMemorySize}

instance Offset "maxMeshOutputComponents" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshOutputComponents}

instance Offset "maxMeshOutputVertices" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshOutputVertices}

instance Offset "maxMeshOutputPrimitives" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshOutputPrimitives}

instance Offset "maxMeshOutputLayers" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshOutputLayers}

instance Offset "maxMeshMultiviewViewCount" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshMultiviewViewCount}

instance Offset "meshOutputPerVertexGranularity" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, meshOutputPerVertexGranularity}

instance Offset "meshOutputPerPrimitiveGranularity" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, meshOutputPerPrimitiveGranularity}

instance Offset "maxPreferredTaskWorkGroupInvocations" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxPreferredTaskWorkGroupInvocations}

instance Offset "maxPreferredMeshWorkGroupInvocations" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, maxPreferredMeshWorkGroupInvocations}

instance Offset "prefersLocalInvocationVertexOutput" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, prefersLocalInvocationVertexOutput}

instance Offset "prefersLocalInvocationPrimitiveOutput" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, prefersLocalInvocationPrimitiveOutput}

instance Offset "prefersCompactVertexOutput" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, prefersCompactVertexOutput}

instance Offset "prefersCompactPrimitiveOutput" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceMeshShaderPropertiesEXT, prefersCompactPrimitiveOutput}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderPropertiesEXT where

#endif