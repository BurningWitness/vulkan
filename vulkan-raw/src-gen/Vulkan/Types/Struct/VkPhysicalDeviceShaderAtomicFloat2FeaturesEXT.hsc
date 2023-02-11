{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_atomic_float2

module Vulkan.Types.Struct.VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT" #-} VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT =
       VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderBufferFloat16Atomics :: VkBool32
         , shaderBufferFloat16AtomicAdd :: VkBool32
         , shaderBufferFloat16AtomicMinMax :: VkBool32
         , shaderBufferFloat32AtomicMinMax :: VkBool32
         , shaderBufferFloat64AtomicMinMax :: VkBool32
         , shaderSharedFloat16Atomics :: VkBool32
         , shaderSharedFloat16AtomicAdd :: VkBool32
         , shaderSharedFloat16AtomicMinMax :: VkBool32
         , shaderSharedFloat32AtomicMinMax :: VkBool32
         , shaderSharedFloat64AtomicMinMax :: VkBool32
         , shaderImageFloat32AtomicMinMax :: VkBool32
         , sparseImageFloat32AtomicMinMax :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderBufferFloat16Atomics" ptr)
       <*> peek (offset @"shaderBufferFloat16AtomicAdd" ptr)
       <*> peek (offset @"shaderBufferFloat16AtomicMinMax" ptr)
       <*> peek (offset @"shaderBufferFloat32AtomicMinMax" ptr)
       <*> peek (offset @"shaderBufferFloat64AtomicMinMax" ptr)
       <*> peek (offset @"shaderSharedFloat16Atomics" ptr)
       <*> peek (offset @"shaderSharedFloat16AtomicAdd" ptr)
       <*> peek (offset @"shaderSharedFloat16AtomicMinMax" ptr)
       <*> peek (offset @"shaderSharedFloat32AtomicMinMax" ptr)
       <*> peek (offset @"shaderSharedFloat64AtomicMinMax" ptr)
       <*> peek (offset @"shaderImageFloat32AtomicMinMax" ptr)
       <*> peek (offset @"sparseImageFloat32AtomicMinMax" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderBufferFloat16Atomics" ptr val
    pokeField @"shaderBufferFloat16AtomicAdd" ptr val
    pokeField @"shaderBufferFloat16AtomicMinMax" ptr val
    pokeField @"shaderBufferFloat32AtomicMinMax" ptr val
    pokeField @"shaderBufferFloat64AtomicMinMax" ptr val
    pokeField @"shaderSharedFloat16Atomics" ptr val
    pokeField @"shaderSharedFloat16AtomicAdd" ptr val
    pokeField @"shaderSharedFloat16AtomicMinMax" ptr val
    pokeField @"shaderSharedFloat32AtomicMinMax" ptr val
    pokeField @"shaderSharedFloat64AtomicMinMax" ptr val
    pokeField @"shaderImageFloat32AtomicMinMax" ptr val
    pokeField @"sparseImageFloat32AtomicMinMax" ptr val

instance Offset "sType" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, pNext}

instance Offset "shaderBufferFloat16Atomics" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, shaderBufferFloat16Atomics}

instance Offset "shaderBufferFloat16AtomicAdd" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, shaderBufferFloat16AtomicAdd}

instance Offset "shaderBufferFloat16AtomicMinMax" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, shaderBufferFloat16AtomicMinMax}

instance Offset "shaderBufferFloat32AtomicMinMax" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, shaderBufferFloat32AtomicMinMax}

instance Offset "shaderBufferFloat64AtomicMinMax" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, shaderBufferFloat64AtomicMinMax}

instance Offset "shaderSharedFloat16Atomics" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, shaderSharedFloat16Atomics}

instance Offset "shaderSharedFloat16AtomicAdd" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, shaderSharedFloat16AtomicAdd}

instance Offset "shaderSharedFloat16AtomicMinMax" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, shaderSharedFloat16AtomicMinMax}

instance Offset "shaderSharedFloat32AtomicMinMax" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, shaderSharedFloat32AtomicMinMax}

instance Offset "shaderSharedFloat64AtomicMinMax" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, shaderSharedFloat64AtomicMinMax}

instance Offset "shaderImageFloat32AtomicMinMax" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, shaderImageFloat32AtomicMinMax}

instance Offset "sparseImageFloat32AtomicMinMax" VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT, sparseImageFloat32AtomicMinMax}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT where

#endif