{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan12Properties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkDriverId
import Vulkan.Types.Enum.VkResolveModeFlags
import Vulkan.Types.Enum.VkSampleCountFlags
import Vulkan.Types.Enum.VkShaderFloatControlsIndependence
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkConformanceVersion



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVulkan12Properties" #-} VkPhysicalDeviceVulkan12Properties =
       VkPhysicalDeviceVulkan12Properties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , driverID :: VkDriverId
         , driverName :: #{type char}
         , driverInfo :: #{type char}
         , conformanceVersion :: VkConformanceVersion
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
         , maxUpdateAfterBindDescriptorsInAllPools :: #{type uint32_t}
         , shaderUniformBufferArrayNonUniformIndexingNative :: VkBool32
         , shaderSampledImageArrayNonUniformIndexingNative :: VkBool32
         , shaderStorageBufferArrayNonUniformIndexingNative :: VkBool32
         , shaderStorageImageArrayNonUniformIndexingNative :: VkBool32
         , shaderInputAttachmentArrayNonUniformIndexingNative :: VkBool32
         , robustBufferAccessUpdateAfterBind :: VkBool32
         , quadDivergentImplicitLod :: VkBool32
         , maxPerStageDescriptorUpdateAfterBindSamplers :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindUniformBuffers :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindStorageBuffers :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindSampledImages :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindStorageImages :: #{type uint32_t}
         , maxPerStageDescriptorUpdateAfterBindInputAttachments :: #{type uint32_t}
         , maxPerStageUpdateAfterBindResources :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindSamplers :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindUniformBuffers :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindUniformBuffersDynamic :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindStorageBuffers :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindStorageBuffersDynamic :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindSampledImages :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindStorageImages :: #{type uint32_t}
         , maxDescriptorSetUpdateAfterBindInputAttachments :: #{type uint32_t}
         , supportedDepthResolveModes :: VkResolveModeFlags -- ^ supported depth resolve modes
         , supportedStencilResolveModes :: VkResolveModeFlags -- ^ supported stencil resolve modes
         , independentResolveNone :: VkBool32 -- ^ depth and stencil resolve modes can be set independently if one of them is none
         , independentResolve :: VkBool32 -- ^ depth and stencil resolve modes can be set independently
         , filterMinmaxSingleComponentFormats :: VkBool32
         , filterMinmaxImageComponentMapping :: VkBool32
         , maxTimelineSemaphoreValueDifference :: #{type uint64_t}
         , framebufferIntegerColorSampleCounts :: VkSampleCountFlags
         }

instance Storable VkPhysicalDeviceVulkan12Properties where
  sizeOf    _ = #{size      struct VkPhysicalDeviceVulkan12Properties}
  alignment _ = #{alignment struct VkPhysicalDeviceVulkan12Properties}

  peek ptr = 
    VkPhysicalDeviceVulkan12Properties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"driverID" ptr)
       <*> peek (offset @"driverName" ptr)
       <*> peek (offset @"driverInfo" ptr)
       <*> peek (offset @"conformanceVersion" ptr)
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
       <*> peek (offset @"maxUpdateAfterBindDescriptorsInAllPools" ptr)
       <*> peek (offset @"shaderUniformBufferArrayNonUniformIndexingNative" ptr)
       <*> peek (offset @"shaderSampledImageArrayNonUniformIndexingNative" ptr)
       <*> peek (offset @"shaderStorageBufferArrayNonUniformIndexingNative" ptr)
       <*> peek (offset @"shaderStorageImageArrayNonUniformIndexingNative" ptr)
       <*> peek (offset @"shaderInputAttachmentArrayNonUniformIndexingNative" ptr)
       <*> peek (offset @"robustBufferAccessUpdateAfterBind" ptr)
       <*> peek (offset @"quadDivergentImplicitLod" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindSamplers" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindUniformBuffers" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindStorageBuffers" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindSampledImages" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindStorageImages" ptr)
       <*> peek (offset @"maxPerStageDescriptorUpdateAfterBindInputAttachments" ptr)
       <*> peek (offset @"maxPerStageUpdateAfterBindResources" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindSamplers" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindUniformBuffers" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindUniformBuffersDynamic" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindStorageBuffers" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindStorageBuffersDynamic" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindSampledImages" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindStorageImages" ptr)
       <*> peek (offset @"maxDescriptorSetUpdateAfterBindInputAttachments" ptr)
       <*> peek (offset @"supportedDepthResolveModes" ptr)
       <*> peek (offset @"supportedStencilResolveModes" ptr)
       <*> peek (offset @"independentResolveNone" ptr)
       <*> peek (offset @"independentResolve" ptr)
       <*> peek (offset @"filterMinmaxSingleComponentFormats" ptr)
       <*> peek (offset @"filterMinmaxImageComponentMapping" ptr)
       <*> peek (offset @"maxTimelineSemaphoreValueDifference" ptr)
       <*> peek (offset @"framebufferIntegerColorSampleCounts" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"driverID" ptr val
    pokeField @"driverName" ptr val
    pokeField @"driverInfo" ptr val
    pokeField @"conformanceVersion" ptr val
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
    pokeField @"maxUpdateAfterBindDescriptorsInAllPools" ptr val
    pokeField @"shaderUniformBufferArrayNonUniformIndexingNative" ptr val
    pokeField @"shaderSampledImageArrayNonUniformIndexingNative" ptr val
    pokeField @"shaderStorageBufferArrayNonUniformIndexingNative" ptr val
    pokeField @"shaderStorageImageArrayNonUniformIndexingNative" ptr val
    pokeField @"shaderInputAttachmentArrayNonUniformIndexingNative" ptr val
    pokeField @"robustBufferAccessUpdateAfterBind" ptr val
    pokeField @"quadDivergentImplicitLod" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindSamplers" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindUniformBuffers" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindStorageBuffers" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindSampledImages" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindStorageImages" ptr val
    pokeField @"maxPerStageDescriptorUpdateAfterBindInputAttachments" ptr val
    pokeField @"maxPerStageUpdateAfterBindResources" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindSamplers" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindUniformBuffers" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindUniformBuffersDynamic" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindStorageBuffers" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindStorageBuffersDynamic" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindSampledImages" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindStorageImages" ptr val
    pokeField @"maxDescriptorSetUpdateAfterBindInputAttachments" ptr val
    pokeField @"supportedDepthResolveModes" ptr val
    pokeField @"supportedStencilResolveModes" ptr val
    pokeField @"independentResolveNone" ptr val
    pokeField @"independentResolve" ptr val
    pokeField @"filterMinmaxSingleComponentFormats" ptr val
    pokeField @"filterMinmaxImageComponentMapping" ptr val
    pokeField @"maxTimelineSemaphoreValueDifference" ptr val
    pokeField @"framebufferIntegerColorSampleCounts" ptr val

instance Offset "sType" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, sType}

instance Offset "pNext" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, pNext}

instance Offset "driverID" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, driverID}

instance Offset "driverName" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, driverName}

instance Offset "driverInfo" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, driverInfo}

instance Offset "conformanceVersion" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, conformanceVersion}

instance Offset "denormBehaviorIndependence" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, denormBehaviorIndependence}

instance Offset "roundingModeIndependence" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, roundingModeIndependence}

instance Offset "shaderSignedZeroInfNanPreserveFloat16" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderSignedZeroInfNanPreserveFloat16}

instance Offset "shaderSignedZeroInfNanPreserveFloat32" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderSignedZeroInfNanPreserveFloat32}

instance Offset "shaderSignedZeroInfNanPreserveFloat64" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderSignedZeroInfNanPreserveFloat64}

instance Offset "shaderDenormPreserveFloat16" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderDenormPreserveFloat16}

instance Offset "shaderDenormPreserveFloat32" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderDenormPreserveFloat32}

instance Offset "shaderDenormPreserveFloat64" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderDenormPreserveFloat64}

instance Offset "shaderDenormFlushToZeroFloat16" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderDenormFlushToZeroFloat16}

instance Offset "shaderDenormFlushToZeroFloat32" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderDenormFlushToZeroFloat32}

instance Offset "shaderDenormFlushToZeroFloat64" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderDenormFlushToZeroFloat64}

instance Offset "shaderRoundingModeRTEFloat16" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderRoundingModeRTEFloat16}

instance Offset "shaderRoundingModeRTEFloat32" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderRoundingModeRTEFloat32}

instance Offset "shaderRoundingModeRTEFloat64" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderRoundingModeRTEFloat64}

instance Offset "shaderRoundingModeRTZFloat16" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderRoundingModeRTZFloat16}

instance Offset "shaderRoundingModeRTZFloat32" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderRoundingModeRTZFloat32}

instance Offset "shaderRoundingModeRTZFloat64" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderRoundingModeRTZFloat64}

instance Offset "maxUpdateAfterBindDescriptorsInAllPools" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxUpdateAfterBindDescriptorsInAllPools}

instance Offset "shaderUniformBufferArrayNonUniformIndexingNative" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderUniformBufferArrayNonUniformIndexingNative}

instance Offset "shaderSampledImageArrayNonUniformIndexingNative" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderSampledImageArrayNonUniformIndexingNative}

instance Offset "shaderStorageBufferArrayNonUniformIndexingNative" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderStorageBufferArrayNonUniformIndexingNative}

instance Offset "shaderStorageImageArrayNonUniformIndexingNative" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderStorageImageArrayNonUniformIndexingNative}

instance Offset "shaderInputAttachmentArrayNonUniformIndexingNative" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, shaderInputAttachmentArrayNonUniformIndexingNative}

instance Offset "robustBufferAccessUpdateAfterBind" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, robustBufferAccessUpdateAfterBind}

instance Offset "quadDivergentImplicitLod" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, quadDivergentImplicitLod}

instance Offset "maxPerStageDescriptorUpdateAfterBindSamplers" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxPerStageDescriptorUpdateAfterBindSamplers}

instance Offset "maxPerStageDescriptorUpdateAfterBindUniformBuffers" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxPerStageDescriptorUpdateAfterBindUniformBuffers}

instance Offset "maxPerStageDescriptorUpdateAfterBindStorageBuffers" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxPerStageDescriptorUpdateAfterBindStorageBuffers}

instance Offset "maxPerStageDescriptorUpdateAfterBindSampledImages" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxPerStageDescriptorUpdateAfterBindSampledImages}

instance Offset "maxPerStageDescriptorUpdateAfterBindStorageImages" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxPerStageDescriptorUpdateAfterBindStorageImages}

instance Offset "maxPerStageDescriptorUpdateAfterBindInputAttachments" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxPerStageDescriptorUpdateAfterBindInputAttachments}

instance Offset "maxPerStageUpdateAfterBindResources" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxPerStageUpdateAfterBindResources}

instance Offset "maxDescriptorSetUpdateAfterBindSamplers" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxDescriptorSetUpdateAfterBindSamplers}

instance Offset "maxDescriptorSetUpdateAfterBindUniformBuffers" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxDescriptorSetUpdateAfterBindUniformBuffers}

instance Offset "maxDescriptorSetUpdateAfterBindUniformBuffersDynamic" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxDescriptorSetUpdateAfterBindUniformBuffersDynamic}

instance Offset "maxDescriptorSetUpdateAfterBindStorageBuffers" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxDescriptorSetUpdateAfterBindStorageBuffers}

instance Offset "maxDescriptorSetUpdateAfterBindStorageBuffersDynamic" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxDescriptorSetUpdateAfterBindStorageBuffersDynamic}

instance Offset "maxDescriptorSetUpdateAfterBindSampledImages" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxDescriptorSetUpdateAfterBindSampledImages}

instance Offset "maxDescriptorSetUpdateAfterBindStorageImages" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxDescriptorSetUpdateAfterBindStorageImages}

instance Offset "maxDescriptorSetUpdateAfterBindInputAttachments" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxDescriptorSetUpdateAfterBindInputAttachments}

instance Offset "supportedDepthResolveModes" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, supportedDepthResolveModes}

instance Offset "supportedStencilResolveModes" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, supportedStencilResolveModes}

instance Offset "independentResolveNone" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, independentResolveNone}

instance Offset "independentResolve" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, independentResolve}

instance Offset "filterMinmaxSingleComponentFormats" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, filterMinmaxSingleComponentFormats}

instance Offset "filterMinmaxImageComponentMapping" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, filterMinmaxImageComponentMapping}

instance Offset "maxTimelineSemaphoreValueDifference" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, maxTimelineSemaphoreValueDifference}

instance Offset "framebufferIntegerColorSampleCounts" VkPhysicalDeviceVulkan12Properties where
  rawOffset = #{offset struct VkPhysicalDeviceVulkan12Properties, framebufferIntegerColorSampleCounts}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVulkan12Properties where

#endif