{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Struct.VkRayTracingShaderGroupCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkRayTracingShaderGroupTypeKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkRayTracingShaderGroupCreateInfoNV" #-} VkRayTracingShaderGroupCreateInfoNV =
       VkRayTracingShaderGroupCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , type_ :: VkRayTracingShaderGroupTypeKHR
         , generalShader :: #{type uint32_t}
         , closestHitShader :: #{type uint32_t}
         , anyHitShader :: #{type uint32_t}
         , intersectionShader :: #{type uint32_t}
         }

instance Storable VkRayTracingShaderGroupCreateInfoNV where
  sizeOf    _ = #{size      struct VkRayTracingShaderGroupCreateInfoNV}
  alignment _ = #{alignment struct VkRayTracingShaderGroupCreateInfoNV}

  peek ptr = 
    VkRayTracingShaderGroupCreateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"type" ptr)
       <*> peek (offset @"generalShader" ptr)
       <*> peek (offset @"closestHitShader" ptr)
       <*> peek (offset @"anyHitShader" ptr)
       <*> peek (offset @"intersectionShader" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"type" ptr val
    pokeField @"generalShader" ptr val
    pokeField @"closestHitShader" ptr val
    pokeField @"anyHitShader" ptr val
    pokeField @"intersectionShader" ptr val

instance Offset "sType" VkRayTracingShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoNV, sType}

instance Offset "pNext" VkRayTracingShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoNV, pNext}

instance Offset "type_" VkRayTracingShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoNV, type}

instance Offset "generalShader" VkRayTracingShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoNV, generalShader}

instance Offset "closestHitShader" VkRayTracingShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoNV, closestHitShader}

instance Offset "anyHitShader" VkRayTracingShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoNV, anyHitShader}

instance Offset "intersectionShader" VkRayTracingShaderGroupCreateInfoNV where
  rawOffset = #{offset struct VkRayTracingShaderGroupCreateInfoNV, intersectionShader}

instance Offset "type" VkRayTracingShaderGroupCreateInfoNV where
  rawOffset = rawOffset @"type_" @VkRayTracingShaderGroupCreateInfoNV

instance HasField "type" VkRayTracingShaderGroupCreateInfoNV VkRayTracingShaderGroupTypeKHR where
  getField = getField @"type_" @VkRayTracingShaderGroupCreateInfoNV

#else

module Vulkan.Types.Struct.VkRayTracingShaderGroupCreateInfoNV where

#endif