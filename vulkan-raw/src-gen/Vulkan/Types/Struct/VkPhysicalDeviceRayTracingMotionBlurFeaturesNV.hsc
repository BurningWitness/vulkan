{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing_motion_blur

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingMotionBlurFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRayTracingMotionBlurFeaturesNV" #-} VkPhysicalDeviceRayTracingMotionBlurFeaturesNV =
       VkPhysicalDeviceRayTracingMotionBlurFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , rayTracingMotionBlur :: VkBool32
         , rayTracingMotionBlurPipelineTraceRaysIndirect :: VkBool32
         }

instance Storable VkPhysicalDeviceRayTracingMotionBlurFeaturesNV where
  sizeOf    _ = #{size      struct VkPhysicalDeviceRayTracingMotionBlurFeaturesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceRayTracingMotionBlurFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceRayTracingMotionBlurFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"rayTracingMotionBlur" ptr)
       <*> peek (offset @"rayTracingMotionBlurPipelineTraceRaysIndirect" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"rayTracingMotionBlur" ptr val
    pokeField @"rayTracingMotionBlurPipelineTraceRaysIndirect" ptr val

instance Offset "sType" VkPhysicalDeviceRayTracingMotionBlurFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingMotionBlurFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceRayTracingMotionBlurFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingMotionBlurFeaturesNV, pNext}

instance Offset "rayTracingMotionBlur" VkPhysicalDeviceRayTracingMotionBlurFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingMotionBlurFeaturesNV, rayTracingMotionBlur}

instance Offset "rayTracingMotionBlurPipelineTraceRaysIndirect" VkPhysicalDeviceRayTracingMotionBlurFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingMotionBlurFeaturesNV, rayTracingMotionBlurPipelineTraceRaysIndirect}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingMotionBlurFeaturesNV where

#endif