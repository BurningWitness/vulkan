{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingPipelineFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRayTracingPipelineFeaturesKHR" #-} VkPhysicalDeviceRayTracingPipelineFeaturesKHR =
       VkPhysicalDeviceRayTracingPipelineFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , rayTracingPipeline :: VkBool32
         , rayTracingPipelineShaderGroupHandleCaptureReplay :: VkBool32
         , rayTracingPipelineShaderGroupHandleCaptureReplayMixed :: VkBool32
         , rayTracingPipelineTraceRaysIndirect :: VkBool32
         , rayTraversalPrimitiveCulling :: VkBool32
         }

instance Storable VkPhysicalDeviceRayTracingPipelineFeaturesKHR where
  sizeOf    _ = #{size      struct VkPhysicalDeviceRayTracingPipelineFeaturesKHR}
  alignment _ = #{alignment struct VkPhysicalDeviceRayTracingPipelineFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceRayTracingPipelineFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"rayTracingPipeline" ptr)
       <*> peek (offset @"rayTracingPipelineShaderGroupHandleCaptureReplay" ptr)
       <*> peek (offset @"rayTracingPipelineShaderGroupHandleCaptureReplayMixed" ptr)
       <*> peek (offset @"rayTracingPipelineTraceRaysIndirect" ptr)
       <*> peek (offset @"rayTraversalPrimitiveCulling" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"rayTracingPipeline" ptr val
    pokeField @"rayTracingPipelineShaderGroupHandleCaptureReplay" ptr val
    pokeField @"rayTracingPipelineShaderGroupHandleCaptureReplayMixed" ptr val
    pokeField @"rayTracingPipelineTraceRaysIndirect" ptr val
    pokeField @"rayTraversalPrimitiveCulling" ptr val

instance Offset "sType" VkPhysicalDeviceRayTracingPipelineFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelineFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceRayTracingPipelineFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelineFeaturesKHR, pNext}

instance Offset "rayTracingPipeline" VkPhysicalDeviceRayTracingPipelineFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelineFeaturesKHR, rayTracingPipeline}

instance Offset "rayTracingPipelineShaderGroupHandleCaptureReplay" VkPhysicalDeviceRayTracingPipelineFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelineFeaturesKHR, rayTracingPipelineShaderGroupHandleCaptureReplay}

instance Offset "rayTracingPipelineShaderGroupHandleCaptureReplayMixed" VkPhysicalDeviceRayTracingPipelineFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelineFeaturesKHR, rayTracingPipelineShaderGroupHandleCaptureReplayMixed}

instance Offset "rayTracingPipelineTraceRaysIndirect" VkPhysicalDeviceRayTracingPipelineFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelineFeaturesKHR, rayTracingPipelineTraceRaysIndirect}

instance Offset "rayTraversalPrimitiveCulling" VkPhysicalDeviceRayTracingPipelineFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelineFeaturesKHR, rayTraversalPrimitiveCulling}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingPipelineFeaturesKHR where

#endif