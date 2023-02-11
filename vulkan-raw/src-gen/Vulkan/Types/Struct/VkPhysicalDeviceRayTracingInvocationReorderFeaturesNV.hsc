{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing_invocation_reorder

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV" #-} VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV =
       VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , rayTracingInvocationReorder :: VkBool32
         }

instance Storable VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV where
  sizeOf    _ = #{size      struct VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"rayTracingInvocationReorder" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"rayTracingInvocationReorder" ptr val

instance Offset "sType" VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV, pNext}

instance Offset "rayTracingInvocationReorder" VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV, rayTracingInvocationReorder}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV where

#endif