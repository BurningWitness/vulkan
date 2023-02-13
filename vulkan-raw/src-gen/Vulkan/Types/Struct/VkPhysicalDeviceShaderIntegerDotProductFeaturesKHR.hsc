{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_integer_dot_product

module Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR" #-} VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR =
       VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderIntegerDotProduct :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderIntegerDotProduct" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderIntegerDotProduct" ptr val

instance Offset "sType" VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR, pNext}

instance Offset "shaderIntegerDotProduct" VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR, shaderIntegerDotProduct}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR where

#endif