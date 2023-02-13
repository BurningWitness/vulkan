{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_atomic_float

module Vulkan.Types.Struct.VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderAtomicFloatFeaturesEXT" #-} VkPhysicalDeviceShaderAtomicFloatFeaturesEXT =
       VkPhysicalDeviceShaderAtomicFloatFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderBufferFloat32Atomics :: VkBool32
         , shaderBufferFloat32AtomicAdd :: VkBool32
         , shaderBufferFloat64Atomics :: VkBool32
         , shaderBufferFloat64AtomicAdd :: VkBool32
         , shaderSharedFloat32Atomics :: VkBool32
         , shaderSharedFloat32AtomicAdd :: VkBool32
         , shaderSharedFloat64Atomics :: VkBool32
         , shaderSharedFloat64AtomicAdd :: VkBool32
         , shaderImageFloat32Atomics :: VkBool32
         , shaderImageFloat32AtomicAdd :: VkBool32
         , sparseImageFloat32Atomics :: VkBool32
         , sparseImageFloat32AtomicAdd :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderAtomicFloatFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceShaderAtomicFloatFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceShaderAtomicFloatFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderBufferFloat32Atomics" ptr)
       <*> peek (offset @"shaderBufferFloat32AtomicAdd" ptr)
       <*> peek (offset @"shaderBufferFloat64Atomics" ptr)
       <*> peek (offset @"shaderBufferFloat64AtomicAdd" ptr)
       <*> peek (offset @"shaderSharedFloat32Atomics" ptr)
       <*> peek (offset @"shaderSharedFloat32AtomicAdd" ptr)
       <*> peek (offset @"shaderSharedFloat64Atomics" ptr)
       <*> peek (offset @"shaderSharedFloat64AtomicAdd" ptr)
       <*> peek (offset @"shaderImageFloat32Atomics" ptr)
       <*> peek (offset @"shaderImageFloat32AtomicAdd" ptr)
       <*> peek (offset @"sparseImageFloat32Atomics" ptr)
       <*> peek (offset @"sparseImageFloat32AtomicAdd" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderBufferFloat32Atomics" ptr val
    pokeField @"shaderBufferFloat32AtomicAdd" ptr val
    pokeField @"shaderBufferFloat64Atomics" ptr val
    pokeField @"shaderBufferFloat64AtomicAdd" ptr val
    pokeField @"shaderSharedFloat32Atomics" ptr val
    pokeField @"shaderSharedFloat32AtomicAdd" ptr val
    pokeField @"shaderSharedFloat64Atomics" ptr val
    pokeField @"shaderSharedFloat64AtomicAdd" ptr val
    pokeField @"shaderImageFloat32Atomics" ptr val
    pokeField @"shaderImageFloat32AtomicAdd" ptr val
    pokeField @"sparseImageFloat32Atomics" ptr val
    pokeField @"sparseImageFloat32AtomicAdd" ptr val

instance Offset "sType" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, pNext}

instance Offset "shaderBufferFloat32Atomics" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, shaderBufferFloat32Atomics}

instance Offset "shaderBufferFloat32AtomicAdd" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, shaderBufferFloat32AtomicAdd}

instance Offset "shaderBufferFloat64Atomics" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, shaderBufferFloat64Atomics}

instance Offset "shaderBufferFloat64AtomicAdd" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, shaderBufferFloat64AtomicAdd}

instance Offset "shaderSharedFloat32Atomics" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, shaderSharedFloat32Atomics}

instance Offset "shaderSharedFloat32AtomicAdd" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, shaderSharedFloat32AtomicAdd}

instance Offset "shaderSharedFloat64Atomics" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, shaderSharedFloat64Atomics}

instance Offset "shaderSharedFloat64AtomicAdd" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, shaderSharedFloat64AtomicAdd}

instance Offset "shaderImageFloat32Atomics" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, shaderImageFloat32Atomics}

instance Offset "shaderImageFloat32AtomicAdd" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, shaderImageFloat32AtomicAdd}

instance Offset "sparseImageFloat32Atomics" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, sparseImageFloat32Atomics}

instance Offset "sparseImageFloat32AtomicAdd" VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicFloatFeaturesEXT, sparseImageFloat32AtomicAdd}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderAtomicFloatFeaturesEXT where

#endif