{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingPipelinePropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRayTracingPipelinePropertiesKHR" #-} VkPhysicalDeviceRayTracingPipelinePropertiesKHR =
       VkPhysicalDeviceRayTracingPipelinePropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderGroupHandleSize :: #{type uint32_t}
         , maxRayRecursionDepth :: #{type uint32_t}
         , maxShaderGroupStride :: #{type uint32_t}
         , shaderGroupBaseAlignment :: #{type uint32_t}
         , shaderGroupHandleCaptureReplaySize :: #{type uint32_t}
         , maxRayDispatchInvocationCount :: #{type uint32_t}
         , shaderGroupHandleAlignment :: #{type uint32_t}
         , maxRayHitAttributeSize :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceRayTracingPipelinePropertiesKHR where
  sizeOf    _ = #{size      struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR}
  alignment _ = #{alignment struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceRayTracingPipelinePropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderGroupHandleSize" ptr)
       <*> peek (offset @"maxRayRecursionDepth" ptr)
       <*> peek (offset @"maxShaderGroupStride" ptr)
       <*> peek (offset @"shaderGroupBaseAlignment" ptr)
       <*> peek (offset @"shaderGroupHandleCaptureReplaySize" ptr)
       <*> peek (offset @"maxRayDispatchInvocationCount" ptr)
       <*> peek (offset @"shaderGroupHandleAlignment" ptr)
       <*> peek (offset @"maxRayHitAttributeSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderGroupHandleSize" ptr val
    pokeField @"maxRayRecursionDepth" ptr val
    pokeField @"maxShaderGroupStride" ptr val
    pokeField @"shaderGroupBaseAlignment" ptr val
    pokeField @"shaderGroupHandleCaptureReplaySize" ptr val
    pokeField @"maxRayDispatchInvocationCount" ptr val
    pokeField @"shaderGroupHandleAlignment" ptr val
    pokeField @"maxRayHitAttributeSize" ptr val

instance Offset "sType" VkPhysicalDeviceRayTracingPipelinePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceRayTracingPipelinePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR, pNext}

instance Offset "shaderGroupHandleSize" VkPhysicalDeviceRayTracingPipelinePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR, shaderGroupHandleSize}

instance Offset "maxRayRecursionDepth" VkPhysicalDeviceRayTracingPipelinePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR, maxRayRecursionDepth}

instance Offset "maxShaderGroupStride" VkPhysicalDeviceRayTracingPipelinePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR, maxShaderGroupStride}

instance Offset "shaderGroupBaseAlignment" VkPhysicalDeviceRayTracingPipelinePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR, shaderGroupBaseAlignment}

instance Offset "shaderGroupHandleCaptureReplaySize" VkPhysicalDeviceRayTracingPipelinePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR, shaderGroupHandleCaptureReplaySize}

instance Offset "maxRayDispatchInvocationCount" VkPhysicalDeviceRayTracingPipelinePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR, maxRayDispatchInvocationCount}

instance Offset "shaderGroupHandleAlignment" VkPhysicalDeviceRayTracingPipelinePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR, shaderGroupHandleAlignment}

instance Offset "maxRayHitAttributeSize" VkPhysicalDeviceRayTracingPipelinePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingPipelinePropertiesKHR, maxRayHitAttributeSize}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingPipelinePropertiesKHR where

#endif