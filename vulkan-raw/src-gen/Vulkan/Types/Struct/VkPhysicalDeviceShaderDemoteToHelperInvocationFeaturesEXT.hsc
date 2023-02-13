{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_demote_to_helper_invocation

module Vulkan.Types.Struct.VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT" #-} VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT =
       VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderDemoteToHelperInvocation :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderDemoteToHelperInvocation" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderDemoteToHelperInvocation" ptr val

instance Offset "sType" VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT, pNext}

instance Offset "shaderDemoteToHelperInvocation" VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT, shaderDemoteToHelperInvocation}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT where

#endif