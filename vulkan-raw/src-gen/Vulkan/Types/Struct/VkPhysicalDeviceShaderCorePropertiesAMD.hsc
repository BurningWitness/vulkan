{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_AMD_shader_core_properties

module Vulkan.Types.Struct.VkPhysicalDeviceShaderCorePropertiesAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderCorePropertiesAMD" #-} VkPhysicalDeviceShaderCorePropertiesAMD =
       VkPhysicalDeviceShaderCorePropertiesAMD
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderEngineCount :: #{type uint32_t} -- ^ number of shader engines
         , shaderArraysPerEngineCount :: #{type uint32_t} -- ^ number of shader arrays
         , computeUnitsPerShaderArray :: #{type uint32_t} -- ^ number of physical CUs per shader array
         , simdPerComputeUnit :: #{type uint32_t} -- ^ number of SIMDs per compute unit
         , wavefrontsPerSimd :: #{type uint32_t} -- ^ number of wavefront slots in each SIMD
         , wavefrontSize :: #{type uint32_t} -- ^ maximum number of threads per wavefront
         , sgprsPerSimd :: #{type uint32_t} -- ^ number of physical SGPRs per SIMD
         , minSgprAllocation :: #{type uint32_t} -- ^ minimum number of SGPRs that can be allocated by a wave
         , maxSgprAllocation :: #{type uint32_t} -- ^ number of available SGPRs
         , sgprAllocationGranularity :: #{type uint32_t} -- ^ SGPRs are allocated in groups of this size
         , vgprsPerSimd :: #{type uint32_t} -- ^ number of physical VGPRs per SIMD
         , minVgprAllocation :: #{type uint32_t} -- ^ minimum number of VGPRs that can be allocated by a wave
         , maxVgprAllocation :: #{type uint32_t} -- ^ number of available VGPRs
         , vgprAllocationGranularity :: #{type uint32_t} -- ^ VGPRs are allocated in groups of this size
         }

instance Storable VkPhysicalDeviceShaderCorePropertiesAMD where
  sizeOf    _ = #{size      struct VkPhysicalDeviceShaderCorePropertiesAMD}
  alignment _ = #{alignment struct VkPhysicalDeviceShaderCorePropertiesAMD}

  peek ptr = 
    VkPhysicalDeviceShaderCorePropertiesAMD
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderEngineCount" ptr)
       <*> peek (offset @"shaderArraysPerEngineCount" ptr)
       <*> peek (offset @"computeUnitsPerShaderArray" ptr)
       <*> peek (offset @"simdPerComputeUnit" ptr)
       <*> peek (offset @"wavefrontsPerSimd" ptr)
       <*> peek (offset @"wavefrontSize" ptr)
       <*> peek (offset @"sgprsPerSimd" ptr)
       <*> peek (offset @"minSgprAllocation" ptr)
       <*> peek (offset @"maxSgprAllocation" ptr)
       <*> peek (offset @"sgprAllocationGranularity" ptr)
       <*> peek (offset @"vgprsPerSimd" ptr)
       <*> peek (offset @"minVgprAllocation" ptr)
       <*> peek (offset @"maxVgprAllocation" ptr)
       <*> peek (offset @"vgprAllocationGranularity" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderEngineCount" ptr val
    pokeField @"shaderArraysPerEngineCount" ptr val
    pokeField @"computeUnitsPerShaderArray" ptr val
    pokeField @"simdPerComputeUnit" ptr val
    pokeField @"wavefrontsPerSimd" ptr val
    pokeField @"wavefrontSize" ptr val
    pokeField @"sgprsPerSimd" ptr val
    pokeField @"minSgprAllocation" ptr val
    pokeField @"maxSgprAllocation" ptr val
    pokeField @"sgprAllocationGranularity" ptr val
    pokeField @"vgprsPerSimd" ptr val
    pokeField @"minVgprAllocation" ptr val
    pokeField @"maxVgprAllocation" ptr val
    pokeField @"vgprAllocationGranularity" ptr val

instance Offset "sType" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, sType}

instance Offset "pNext" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, pNext}

instance Offset "shaderEngineCount" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, shaderEngineCount}

instance Offset "shaderArraysPerEngineCount" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, shaderArraysPerEngineCount}

instance Offset "computeUnitsPerShaderArray" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, computeUnitsPerShaderArray}

instance Offset "simdPerComputeUnit" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, simdPerComputeUnit}

instance Offset "wavefrontsPerSimd" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, wavefrontsPerSimd}

instance Offset "wavefrontSize" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, wavefrontSize}

instance Offset "sgprsPerSimd" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, sgprsPerSimd}

instance Offset "minSgprAllocation" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, minSgprAllocation}

instance Offset "maxSgprAllocation" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, maxSgprAllocation}

instance Offset "sgprAllocationGranularity" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, sgprAllocationGranularity}

instance Offset "vgprsPerSimd" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, vgprsPerSimd}

instance Offset "minVgprAllocation" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, minVgprAllocation}

instance Offset "maxVgprAllocation" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, maxVgprAllocation}

instance Offset "vgprAllocationGranularity" VkPhysicalDeviceShaderCorePropertiesAMD where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCorePropertiesAMD, vgprAllocationGranularity}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderCorePropertiesAMD where

#endif