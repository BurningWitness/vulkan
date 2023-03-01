{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_compute_shader_derivatives

module Vulkan.Types.Struct.VkPhysicalDeviceComputeShaderDerivativesFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceComputeShaderDerivativesFeaturesNV" #-} VkPhysicalDeviceComputeShaderDerivativesFeaturesNV =
       VkPhysicalDeviceComputeShaderDerivativesFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , computeDerivativeGroupQuads :: VkBool32
         , computeDerivativeGroupLinear :: VkBool32
         }

instance Storable VkPhysicalDeviceComputeShaderDerivativesFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceComputeShaderDerivativesFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceComputeShaderDerivativesFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceComputeShaderDerivativesFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"computeDerivativeGroupQuads" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"computeDerivativeGroupLinear" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"computeDerivativeGroupQuads" ptr val
    pokeField @"computeDerivativeGroupLinear" ptr val

instance Offset "sType" VkPhysicalDeviceComputeShaderDerivativesFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceComputeShaderDerivativesFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceComputeShaderDerivativesFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceComputeShaderDerivativesFeaturesNV, pNext}

instance Offset "computeDerivativeGroupQuads" VkPhysicalDeviceComputeShaderDerivativesFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceComputeShaderDerivativesFeaturesNV, computeDerivativeGroupQuads}

instance Offset "computeDerivativeGroupLinear" VkPhysicalDeviceComputeShaderDerivativesFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceComputeShaderDerivativesFeaturesNV, computeDerivativeGroupLinear}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceComputeShaderDerivativesFeaturesNV where

#endif