{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_terminate_invocation

module Vulkan.Types.Struct.VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR" #-} VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR =
       VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderTerminateInvocation :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderTerminateInvocation" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderTerminateInvocation" ptr val

instance Offset "sType" VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR, pNext}

instance Offset "shaderTerminateInvocation" VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR, shaderTerminateInvocation}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR where

#endif