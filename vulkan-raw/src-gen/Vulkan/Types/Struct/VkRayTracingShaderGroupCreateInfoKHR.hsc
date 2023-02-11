{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Struct.VkRayTracingShaderGroupCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkRayTracingShaderGroupTypeKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkRayTracingShaderGroupCreateInfoKHR" #-} VkRayTracingShaderGroupCreateInfoKHR =
       VkRayTracingShaderGroupCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , type_ :: VkRayTracingShaderGroupTypeKHR
         , generalShader :: #{type uint32_t}
         , closestHitShader :: #{type uint32_t}
         , anyHitShader :: #{type uint32_t}
         , intersectionShader :: #{type uint32_t}
         , pShaderGroupCaptureReplayHandle :: Ptr ()
         }

instance Storable VkRayTracingShaderGroupCreateInfoKHR where
  sizeOf    _ = #{size      struct VkRayTracingShaderGroupCreateInfoKHR}
  alignment _ = #{alignment struct VkRayTracingShaderGroupCreateInfoKHR}

  peek ptr = 
    VkRayTracingShaderGroupCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"type" ptr)
       <*> peek (offset @"generalShader" ptr)
       <*> peek (offset @"closestHitShader" ptr)
       <*> peek (offset @"anyHitShader" ptr)
       <*> peek (offset @"intersectionShader" ptr)
       <*> peek (offset @"pShaderGroupCaptureReplayHandle" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"type" ptr val
    pokeField @"generalShader" ptr val
    pokeField @"closestHitShader" ptr val
    pokeField @"anyHitShader" ptr val
    pokeField @"intersectionShader" ptr val
    pokeField @"pShaderGroupCaptureReplayHandle" ptr val

instance Offset "sType" VkRayTracingShaderGroupCreateInfoKHR where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoKHR, sType}

instance Offset "pNext" VkRayTracingShaderGroupCreateInfoKHR where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoKHR, pNext}

instance Offset "type_" VkRayTracingShaderGroupCreateInfoKHR where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoKHR, type}

instance Offset "generalShader" VkRayTracingShaderGroupCreateInfoKHR where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoKHR, generalShader}

instance Offset "closestHitShader" VkRayTracingShaderGroupCreateInfoKHR where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoKHR, closestHitShader}

instance Offset "anyHitShader" VkRayTracingShaderGroupCreateInfoKHR where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoKHR, anyHitShader}

instance Offset "intersectionShader" VkRayTracingShaderGroupCreateInfoKHR where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoKHR, intersectionShader}

instance Offset "pShaderGroupCaptureReplayHandle" VkRayTracingShaderGroupCreateInfoKHR where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoKHR, pShaderGroupCaptureReplayHandle}

instance Offset "type" VkRayTracingShaderGroupCreateInfoKHR where
  rawOffset = rawOffset @"type_" @VkRayTracingShaderGroupCreateInfoKHR

instance HasField "type" VkRayTracingShaderGroupCreateInfoKHR VkRayTracingShaderGroupTypeKHR where
  getField = getField @"type_" @VkRayTracingShaderGroupCreateInfoKHR

#else

module Vulkan.Types.Struct.VkRayTracingShaderGroupCreateInfoKHR where

#endif