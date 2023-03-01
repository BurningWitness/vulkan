{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing_invocation_reorder

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkRayTracingInvocationReorderModeNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV" #-} VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV =
       VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , rayTracingInvocationReorderReorderingHint :: VkRayTracingInvocationReorderModeNV
         }

instance Storable VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV}
  alignment _ = #{alignment VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rayTracingInvocationReorderReorderingHint" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"rayTracingInvocationReorderReorderingHint" ptr val

instance Offset "sType" VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV, pNext}

instance Offset "rayTracingInvocationReorderReorderingHint" VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV, rayTracingInvocationReorderReorderingHint}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV where

#endif