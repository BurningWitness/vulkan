{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceShaderTerminateInvocationFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderTerminateInvocationFeatures" #-} VkPhysicalDeviceShaderTerminateInvocationFeatures =
       VkPhysicalDeviceShaderTerminateInvocationFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderTerminateInvocation :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderTerminateInvocationFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderTerminateInvocationFeatures}
  alignment _ = #{alignment VkPhysicalDeviceShaderTerminateInvocationFeatures}

  peek ptr = 
    VkPhysicalDeviceShaderTerminateInvocationFeatures
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderTerminateInvocation" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderTerminateInvocation" ptr val

instance Offset "sType" VkPhysicalDeviceShaderTerminateInvocationFeatures where
  rawOffset = #{offset VkPhysicalDeviceShaderTerminateInvocationFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceShaderTerminateInvocationFeatures where
  rawOffset = #{offset VkPhysicalDeviceShaderTerminateInvocationFeatures, pNext}

instance Offset "shaderTerminateInvocation" VkPhysicalDeviceShaderTerminateInvocationFeatures where
  rawOffset = #{offset VkPhysicalDeviceShaderTerminateInvocationFeatures, shaderTerminateInvocation}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderTerminateInvocationFeatures where

#endif