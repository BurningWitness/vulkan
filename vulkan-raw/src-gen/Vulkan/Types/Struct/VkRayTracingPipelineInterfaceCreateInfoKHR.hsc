{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Struct.VkRayTracingPipelineInterfaceCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkRayTracingPipelineInterfaceCreateInfoKHR" #-} VkRayTracingPipelineInterfaceCreateInfoKHR =
       VkRayTracingPipelineInterfaceCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxPipelineRayPayloadSize :: #{type uint32_t}
         , maxPipelineRayHitAttributeSize :: #{type uint32_t}
         }

instance Storable VkRayTracingPipelineInterfaceCreateInfoKHR where
  sizeOf    _ = #{size      struct VkRayTracingPipelineInterfaceCreateInfoKHR}
  alignment _ = #{alignment struct VkRayTracingPipelineInterfaceCreateInfoKHR}

  peek ptr = 
    VkRayTracingPipelineInterfaceCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxPipelineRayPayloadSize" ptr)
       <*> peek (offset @"maxPipelineRayHitAttributeSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxPipelineRayPayloadSize" ptr val
    pokeField @"maxPipelineRayHitAttributeSize" ptr val

instance Offset "sType" VkRayTracingPipelineInterfaceCreateInfoKHR where
  rawOffset = #{offset struct VkRayTracingPipelineInterfaceCreateInfoKHR, sType}

instance Offset "pNext" VkRayTracingPipelineInterfaceCreateInfoKHR where
  rawOffset = #{offset struct VkRayTracingPipelineInterfaceCreateInfoKHR, pNext}

instance Offset "maxPipelineRayPayloadSize" VkRayTracingPipelineInterfaceCreateInfoKHR where
  rawOffset = #{offset struct VkRayTracingPipelineInterfaceCreateInfoKHR, maxPipelineRayPayloadSize}

instance Offset "maxPipelineRayHitAttributeSize" VkRayTracingPipelineInterfaceCreateInfoKHR where
  rawOffset = #{offset struct VkRayTracingPipelineInterfaceCreateInfoKHR, maxPipelineRayHitAttributeSize}

#else

module Vulkan.Types.Struct.VkRayTracingPipelineInterfaceCreateInfoKHR where

#endif