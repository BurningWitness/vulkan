{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkPhysicalDeviceMeshShaderPropertiesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceMeshShaderPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceMeshShaderPropertiesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxDrawMeshTasksCount" ptr)
       <*> peek (offset @"maxTaskWorkGroupInvocations" ptr)
       <*> peek (offset @"maxTaskWorkGroupSize" ptr)
       <*> peek (offset @"maxTaskTotalMemorySize" ptr)
       <*> peek (offset @"maxTaskOutputCount" ptr)
       <*> peek (offset @"maxMeshWorkGroupInvocations" ptr)
       <*> peek (offset @"maxMeshWorkGroupSize" ptr)
       <*> peek (offset @"maxMeshTotalMemorySize" ptr)
       <*> peek (offset @"maxMeshOutputVertices" ptr)
       <*> peek (offset @"maxMeshOutputPrimitives" ptr)
       <*> peek (offset @"maxMeshMultiviewViewCount" ptr)
       <*> peek (offset @"meshOutputPerVertexGranularity" ptr)
       <*> peek (offset @"meshOutputPerPrimitiveGranularity" ptr)

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
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, pNext}

instance Offset "maxDrawMeshTasksCount" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, maxDrawMeshTasksCount}

instance Offset "maxTaskWorkGroupInvocations" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, maxTaskWorkGroupInvocations}

instance Offset "maxTaskWorkGroupSize" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, maxTaskWorkGroupSize}

instance Offset "maxTaskTotalMemorySize" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, maxTaskTotalMemorySize}

instance Offset "maxTaskOutputCount" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, maxTaskOutputCount}

instance Offset "maxMeshWorkGroupInvocations" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, maxMeshWorkGroupInvocations}

instance Offset "maxMeshWorkGroupSize" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, maxMeshWorkGroupSize}

instance Offset "maxMeshTotalMemorySize" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, maxMeshTotalMemorySize}

instance Offset "maxMeshOutputVertices" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, maxMeshOutputVertices}

instance Offset "maxMeshOutputPrimitives" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, maxMeshOutputPrimitives}

instance Offset "maxMeshMultiviewViewCount" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, maxMeshMultiviewViewCount}

instance Offset "meshOutputPerVertexGranularity" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, meshOutputPerVertexGranularity}

instance Offset "meshOutputPerPrimitiveGranularity" VkPhysicalDeviceMeshShaderPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceMeshShaderPropertiesNV, meshOutputPerPrimitiveGranularity}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMeshShaderPropertiesNV where

#endif