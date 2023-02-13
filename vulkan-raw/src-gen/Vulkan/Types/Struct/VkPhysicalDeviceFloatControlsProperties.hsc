{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceFloatControlsProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkShaderFloatControlsIndependence
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFloatControlsProperties" #-} VkPhysicalDeviceFloatControlsProperties =
       VkPhysicalDeviceFloatControlsProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , denormBehaviorIndependence :: VkShaderFloatControlsIndependence
         , roundingModeIndependence :: VkShaderFloatControlsIndependence
         , shaderSignedZeroInfNanPreserveFloat16 :: VkBool32 -- ^ An implementation can preserve signed zero, nan, inf
         , shaderSignedZeroInfNanPreserveFloat32 :: VkBool32 -- ^ An implementation can preserve signed zero, nan, inf
         , shaderSignedZeroInfNanPreserveFloat64 :: VkBool32 -- ^ An implementation can preserve signed zero, nan, inf
         , shaderDenormPreserveFloat16 :: VkBool32 -- ^ An implementation can preserve  denormals
         , shaderDenormPreserveFloat32 :: VkBool32 -- ^ An implementation can preserve  denormals
         , shaderDenormPreserveFloat64 :: VkBool32 -- ^ An implementation can preserve  denormals
         , shaderDenormFlushToZeroFloat16 :: VkBool32 -- ^ An implementation can flush to zero  denormals
         , shaderDenormFlushToZeroFloat32 :: VkBool32 -- ^ An implementation can flush to zero  denormals
         , shaderDenormFlushToZeroFloat64 :: VkBool32 -- ^ An implementation can flush to zero  denormals
         , shaderRoundingModeRTEFloat16 :: VkBool32 -- ^ An implementation can support RTE
         , shaderRoundingModeRTEFloat32 :: VkBool32 -- ^ An implementation can support RTE
         , shaderRoundingModeRTEFloat64 :: VkBool32 -- ^ An implementation can support RTE
         , shaderRoundingModeRTZFloat16 :: VkBool32 -- ^ An implementation can support RTZ
         , shaderRoundingModeRTZFloat32 :: VkBool32 -- ^ An implementation can support RTZ
         , shaderRoundingModeRTZFloat64 :: VkBool32 -- ^ An implementation can support RTZ
         }

instance Storable VkPhysicalDeviceFloatControlsProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceFloatControlsProperties}
  alignment _ = #{alignment VkPhysicalDeviceFloatControlsProperties}

  peek ptr = 
    VkPhysicalDeviceFloatControlsProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"denormBehaviorIndependence" ptr)
       <*> peek (offset @"roundingModeIndependence" ptr)
       <*> peek (offset @"shaderSignedZeroInfNanPreserveFloat16" ptr)
       <*> peek (offset @"shaderSignedZeroInfNanPreserveFloat32" ptr)
       <*> peek (offset @"shaderSignedZeroInfNanPreserveFloat64" ptr)
       <*> peek (offset @"shaderDenormPreserveFloat16" ptr)
       <*> peek (offset @"shaderDenormPreserveFloat32" ptr)
       <*> peek (offset @"shaderDenormPreserveFloat64" ptr)
       <*> peek (offset @"shaderDenormFlushToZeroFloat16" ptr)
       <*> peek (offset @"shaderDenormFlushToZeroFloat32" ptr)
       <*> peek (offset @"shaderDenormFlushToZeroFloat64" ptr)
       <*> peek (offset @"shaderRoundingModeRTEFloat16" ptr)
       <*> peek (offset @"shaderRoundingModeRTEFloat32" ptr)
       <*> peek (offset @"shaderRoundingModeRTEFloat64" ptr)
       <*> peek (offset @"shaderRoundingModeRTZFloat16" ptr)
       <*> peek (offset @"shaderRoundingModeRTZFloat32" ptr)
       <*> peek (offset @"shaderRoundingModeRTZFloat64" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"denormBehaviorIndependence" ptr val
    pokeField @"roundingModeIndependence" ptr val
    pokeField @"shaderSignedZeroInfNanPreserveFloat16" ptr val
    pokeField @"shaderSignedZeroInfNanPreserveFloat32" ptr val
    pokeField @"shaderSignedZeroInfNanPreserveFloat64" ptr val
    pokeField @"shaderDenormPreserveFloat16" ptr val
    pokeField @"shaderDenormPreserveFloat32" ptr val
    pokeField @"shaderDenormPreserveFloat64" ptr val
    pokeField @"shaderDenormFlushToZeroFloat16" ptr val
    pokeField @"shaderDenormFlushToZeroFloat32" ptr val
    pokeField @"shaderDenormFlushToZeroFloat64" ptr val
    pokeField @"shaderRoundingModeRTEFloat16" ptr val
    pokeField @"shaderRoundingModeRTEFloat32" ptr val
    pokeField @"shaderRoundingModeRTEFloat64" ptr val
    pokeField @"shaderRoundingModeRTZFloat16" ptr val
    pokeField @"shaderRoundingModeRTZFloat32" ptr val
    pokeField @"shaderRoundingModeRTZFloat64" ptr val

instance Offset "sType" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, sType}

instance Offset "pNext" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, pNext}

instance Offset "denormBehaviorIndependence" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, denormBehaviorIndependence}

instance Offset "roundingModeIndependence" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, roundingModeIndependence}

instance Offset "shaderSignedZeroInfNanPreserveFloat16" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderSignedZeroInfNanPreserveFloat16}

instance Offset "shaderSignedZeroInfNanPreserveFloat32" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderSignedZeroInfNanPreserveFloat32}

instance Offset "shaderSignedZeroInfNanPreserveFloat64" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderSignedZeroInfNanPreserveFloat64}

instance Offset "shaderDenormPreserveFloat16" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderDenormPreserveFloat16}

instance Offset "shaderDenormPreserveFloat32" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderDenormPreserveFloat32}

instance Offset "shaderDenormPreserveFloat64" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderDenormPreserveFloat64}

instance Offset "shaderDenormFlushToZeroFloat16" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderDenormFlushToZeroFloat16}

instance Offset "shaderDenormFlushToZeroFloat32" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderDenormFlushToZeroFloat32}

instance Offset "shaderDenormFlushToZeroFloat64" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderDenormFlushToZeroFloat64}

instance Offset "shaderRoundingModeRTEFloat16" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderRoundingModeRTEFloat16}

instance Offset "shaderRoundingModeRTEFloat32" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderRoundingModeRTEFloat32}

instance Offset "shaderRoundingModeRTEFloat64" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderRoundingModeRTEFloat64}

instance Offset "shaderRoundingModeRTZFloat16" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderRoundingModeRTZFloat16}

instance Offset "shaderRoundingModeRTZFloat32" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderRoundingModeRTZFloat32}

instance Offset "shaderRoundingModeRTZFloat64" VkPhysicalDeviceFloatControlsProperties where
  rawOffset = #{offset VkPhysicalDeviceFloatControlsProperties, shaderRoundingModeRTZFloat64}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFloatControlsProperties where

#endif