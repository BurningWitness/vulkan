{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_maintenance1

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR" #-} VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR =
       VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , rayTracingMaintenance1 :: VkBool32
         , rayTracingPipelineTraceRaysIndirect2 :: VkBool32
         }

instance Storable VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rayTracingMaintenance1" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rayTracingPipelineTraceRaysIndirect2" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"rayTracingMaintenance1" ptr val
    pokeField @"rayTracingPipelineTraceRaysIndirect2" ptr val

instance Offset "sType" VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR, pNext}

instance Offset "rayTracingMaintenance1" VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR, rayTracingMaintenance1}

instance Offset "rayTracingPipelineTraceRaysIndirect2" VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR, rayTracingPipelineTraceRaysIndirect2}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR where

#endif