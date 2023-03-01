{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_atomic_int64

module Vulkan.Types.Struct.VkPhysicalDeviceShaderAtomicInt64FeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderAtomicInt64FeaturesKHR" #-} VkPhysicalDeviceShaderAtomicInt64FeaturesKHR =
       VkPhysicalDeviceShaderAtomicInt64FeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderBufferInt64Atomics :: VkBool32
         , shaderSharedInt64Atomics :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderAtomicInt64FeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderAtomicInt64FeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceShaderAtomicInt64FeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceShaderAtomicInt64FeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderBufferInt64Atomics" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderSharedInt64Atomics" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderBufferInt64Atomics" ptr val
    pokeField @"shaderSharedInt64Atomics" ptr val

instance Offset "sType" VkPhysicalDeviceShaderAtomicInt64FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicInt64FeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceShaderAtomicInt64FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicInt64FeaturesKHR, pNext}

instance Offset "shaderBufferInt64Atomics" VkPhysicalDeviceShaderAtomicInt64FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicInt64FeaturesKHR, shaderBufferInt64Atomics}

instance Offset "shaderSharedInt64Atomics" VkPhysicalDeviceShaderAtomicInt64FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicInt64FeaturesKHR, shaderSharedInt64Atomics}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderAtomicInt64FeaturesKHR where

#endif