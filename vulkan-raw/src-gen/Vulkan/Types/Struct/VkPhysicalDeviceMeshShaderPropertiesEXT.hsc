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
  sizeOf    _ = #{size      struct VkPhysicalDeviceMeshShaderPropertiesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceMeshShaderPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceMeshShaderPropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxTaskWorkGroupTotalCount" ptr)
       <*> peek (offset @"maxTaskWorkGroupCount" ptr)
       <*> peek (offset @"maxTaskWorkGroupInvocations" ptr)
       <*> peek (offset @"maxTaskWorkGroupSize" ptr)
       <*> peek (offset @"maxTaskPayloadSize" ptr)
       <*> peek (offset @"maxTaskSharedMemorySize" ptr)
       <*> peek (offset @"maxTaskPayloadAndSharedMemorySize" ptr)
       <*> peek (offset @"maxMeshWorkGroupTotalCount" ptr)
       <*> peek (offset @"maxMeshWorkGroupCount" ptr)
       <*> peek (offset @"maxMeshWorkGroupInvocations" ptr)
       <*> peek (offset @"maxMeshWorkGroupSize" ptr)
       <*> peek (offset @"maxMeshSharedMemorySize" ptr)
       <*> peek (offset @"maxMeshPayloadAndSharedMemorySize" ptr)
       <*> peek (offset @"maxMeshOutputMemorySize" ptr)
       <*> peek (offset @"maxMeshPayloadAndOutputMemorySize" ptr)
       <*> peek (offset @"maxMeshOutputComponents" ptr)
       <*> peek (offset @"maxMeshOutputVertices" ptr)
       <*> peek (offset @"maxMeshOutputPrimitives" ptr)
       <*> peek (offset @"maxMeshOutputLayers" ptr)
       <*> peek (offset @"maxMeshMultiviewViewCount" ptr)
       <*> peek (offset @"meshOutputPerVertexGranularity" ptr)
       <*> peek (offset @"meshOutputPerPrimitiveGranularity" ptr)
       <*> peek (offset @"maxPreferredTaskWorkGroupInvocations" ptr)
       <*> peek (offset @"maxPreferredMeshWorkGroupInvocations" ptr)
       <*> peek (offset @"prefersLocalInvocationVertexOutput" ptr)
       <*> peek (offset @"prefersLocalInvocationPrimitiveOutput" ptr)
       <*> peek (offset @"prefersCompactVertexOutput" ptr)
       <*> peek (offset @"prefersCompactPrimitiveOutput" ptr)

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
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, pNext}

instance Offset "maxTaskWorkGroupTotalCount" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskWorkGroupTotalCount}

instance Offset "maxTaskWorkGroupCount" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskWorkGroupCount}

instance Offset "maxTaskWorkGroupInvocations" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskWorkGroupInvocations}

instance Offset "maxTaskWorkGroupSize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskWorkGroupSize}

instance Offset "maxTaskPayloadSize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskPayloadSize}

instance Offset "maxTaskSharedMemorySize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskSharedMemorySize}

instance Offset "maxTaskPayloadAndSharedMemorySize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxTaskPayloadAndSharedMemorySize}

instance Offset "maxMeshWorkGroupTotalCount" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshWorkGroupTotalCount}

instance Offset "maxMeshWorkGroupCount" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshWorkGroupCount}

instance Offset "maxMeshWorkGroupInvocations" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshWorkGroupInvocations}

instance Offset "maxMeshWorkGroupSize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshWorkGroupSize}

instance Offset "maxMeshSharedMemorySize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshSharedMemorySize}

instance Offset "maxMeshPayloadAndSharedMemorySize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshPayloadAndSharedMemorySize}

instance Offset "maxMeshOutputMemorySize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshOutputMemorySize}

instance Offset "maxMeshPayloadAndOutputMemorySize" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshPayloadAndOutputMemorySize}

instance Offset "maxMeshOutputComponents" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshOutputComponents}

instance Offset "maxMeshOutputVertices" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshOutputVertices}

instance Offset "maxMeshOutputPrimitives" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshOutputPrimitives}

instance Offset "maxMeshOutputLayers" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshOutputLayers}

instance Offset "maxMeshMultiviewViewCount" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxMeshMultiviewViewCount}

instance Offset "meshOutputPerVertexGranularity" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, meshOutputPerVertexGranularity}

instance Offset "meshOutputPerPrimitiveGranularity" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, meshOutputPerPrimitiveGranularity}

instance Offset "maxPreferredTaskWorkGroupInvocations" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxPreferredTaskWorkGroupInvocations}

instance Offset "maxPreferredMeshWorkGroupInvocations" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, maxPreferredMeshWorkGroupInvocations}

instance Offset "prefersLocalInvocationVertexOutput" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, prefersLocalInvocationVertexOutput}

instance Offset "prefersLocalInvocationPrimitiveOutput" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, prefersLocalInvocationPrimitiveOutput}

instance Offset "prefersCompactVertexOutput" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, prefersCompactVertexOutput}

instance Offset "prefersCompactPrimitiveOutput" VkPhysicalDeviceMeshShaderPropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesEXT, prefersCompactPrimitiveOutput}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderPropertiesEXT where

#endif