{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_image_atomic_int64

module Vulkan.Types.Struct.VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT" #-} VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT =
       VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderImageInt64Atomics :: VkBool32
         , sparseImageInt64Atomics :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderImageInt64Atomics" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sparseImageInt64Atomics" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderImageInt64Atomics" ptr val
    pokeField @"sparseImageInt64Atomics" ptr val

instance Offset "sType" VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT, pNext}

instance Offset "shaderImageInt64Atomics" VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT, shaderImageInt64Atomics}

instance Offset "sparseImageInt64Atomics" VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT, sparseImageInt64Atomics}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT where

#endif