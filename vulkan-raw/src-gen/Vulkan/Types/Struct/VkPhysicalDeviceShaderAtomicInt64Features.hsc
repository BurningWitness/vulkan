{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceShaderAtomicInt64Features where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderAtomicInt64Features" #-} VkPhysicalDeviceShaderAtomicInt64Features =
       VkPhysicalDeviceShaderAtomicInt64Features
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderBufferInt64Atomics :: VkBool32
         , shaderSharedInt64Atomics :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderAtomicInt64Features where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderAtomicInt64Features}
  alignment _ = #{alignment VkPhysicalDeviceShaderAtomicInt64Features}

  peek ptr = 
    VkPhysicalDeviceShaderAtomicInt64Features
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderBufferInt64Atomics" ptr)
       <*> peek (offset @"shaderSharedInt64Atomics" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderBufferInt64Atomics" ptr val
    pokeField @"shaderSharedInt64Atomics" ptr val

instance Offset "sType" VkPhysicalDeviceShaderAtomicInt64Features where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicInt64Features, sType}

instance Offset "pNext" VkPhysicalDeviceShaderAtomicInt64Features where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicInt64Features, pNext}

instance Offset "shaderBufferInt64Atomics" VkPhysicalDeviceShaderAtomicInt64Features where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicInt64Features, shaderBufferInt64Atomics}

instance Offset "shaderSharedInt64Atomics" VkPhysicalDeviceShaderAtomicInt64Features where
  rawOffset = #{offset VkPhysicalDeviceShaderAtomicInt64Features, shaderSharedInt64Atomics}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderAtomicInt64Features where

#endif