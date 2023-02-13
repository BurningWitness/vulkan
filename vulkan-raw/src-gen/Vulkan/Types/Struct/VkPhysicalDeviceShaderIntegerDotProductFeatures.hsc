{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerDotProductFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderIntegerDotProductFeatures" #-} VkPhysicalDeviceShaderIntegerDotProductFeatures =
       VkPhysicalDeviceShaderIntegerDotProductFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderIntegerDotProduct :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderIntegerDotProductFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderIntegerDotProductFeatures}
  alignment _ = #{alignment VkPhysicalDeviceShaderIntegerDotProductFeatures}

  peek ptr = 
    VkPhysicalDeviceShaderIntegerDotProductFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderIntegerDotProduct" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderIntegerDotProduct" ptr val

instance Offset "sType" VkPhysicalDeviceShaderIntegerDotProductFeatures where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceShaderIntegerDotProductFeatures where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductFeatures, pNext}

instance Offset "shaderIntegerDotProduct" VkPhysicalDeviceShaderIntegerDotProductFeatures where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerDotProductFeatures, shaderIntegerDotProduct}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerDotProductFeatures where

#endif