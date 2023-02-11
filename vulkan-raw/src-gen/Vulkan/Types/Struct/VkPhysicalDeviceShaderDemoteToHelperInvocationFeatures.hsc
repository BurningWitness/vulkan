{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures" #-} VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures =
       VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderDemoteToHelperInvocation :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures where
  sizeOf    _ = #{size      struct VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures}
  alignment _ = #{alignment struct VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures}

  peek ptr = 
    VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderDemoteToHelperInvocation" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderDemoteToHelperInvocation" ptr val

instance Offset "sType" VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures, pNext}

instance Offset "shaderDemoteToHelperInvocation" VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures, shaderDemoteToHelperInvocation}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures where

#endif