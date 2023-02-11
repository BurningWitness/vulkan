{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_AMD_shader_core_properties2

module Vulkan.Types.Struct.VkPhysicalDeviceShaderCoreProperties2AMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkShaderCorePropertiesFlagsAMD
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderCoreProperties2AMD" #-} VkPhysicalDeviceShaderCoreProperties2AMD =
       VkPhysicalDeviceShaderCoreProperties2AMD
         { sType :: VkStructureType
         , pNext :: Ptr () -- ^ Pointer to next structure
         , shaderCoreFeatures :: VkShaderCorePropertiesFlagsAMD -- ^ features supported by the shader core
         , activeComputeUnitCount :: #{type uint32_t} -- ^ number of active compute units across all shader engines/arrays
         }

instance Storable VkPhysicalDeviceShaderCoreProperties2AMD where
  sizeOf    _ = #{size      struct VkPhysicalDeviceShaderCoreProperties2AMD}
  alignment _ = #{alignment struct VkPhysicalDeviceShaderCoreProperties2AMD}

  peek ptr = 
    VkPhysicalDeviceShaderCoreProperties2AMD
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderCoreFeatures" ptr)
       <*> peek (offset @"activeComputeUnitCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderCoreFeatures" ptr val
    pokeField @"activeComputeUnitCount" ptr val

instance Offset "sType" VkPhysicalDeviceShaderCoreProperties2AMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCoreProperties2AMD, sType}

instance Offset "pNext" VkPhysicalDeviceShaderCoreProperties2AMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCoreProperties2AMD, pNext}

instance Offset "shaderCoreFeatures" VkPhysicalDeviceShaderCoreProperties2AMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCoreProperties2AMD, shaderCoreFeatures}

instance Offset "activeComputeUnitCount" VkPhysicalDeviceShaderCoreProperties2AMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCoreProperties2AMD, activeComputeUnitCount}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderCoreProperties2AMD where

#endif