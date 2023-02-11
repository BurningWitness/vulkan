{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPhysicalDeviceFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFeatures" #-} VkPhysicalDeviceFeatures =
       VkPhysicalDeviceFeatures
         { robustBufferAccess :: VkBool32 -- ^ out of bounds buffer accesses are well defined
         , fullDrawIndexUint32 :: VkBool32 -- ^ full 32-bit range of indices for indexed draw calls
         , imageCubeArray :: VkBool32 -- ^ image views which are arrays of cube maps
         , independentBlend :: VkBool32 -- ^ blending operations are controlled per-attachment
         , geometryShader :: VkBool32 -- ^ geometry stage
         , tessellationShader :: VkBool32 -- ^ tessellation control and evaluation stage
         , sampleRateShading :: VkBool32 -- ^ per-sample shading and interpolation
         , dualSrcBlend :: VkBool32 -- ^ blend operations which take two sources
         , logicOp :: VkBool32 -- ^ logic operations
         , multiDrawIndirect :: VkBool32 -- ^ multi draw indirect
         , drawIndirectFirstInstance :: VkBool32 -- ^ indirect drawing can use non-zero firstInstance
         , depthClamp :: VkBool32 -- ^ depth clamping
         , depthBiasClamp :: VkBool32 -- ^ depth bias clamping
         , fillModeNonSolid :: VkBool32 -- ^ point and wireframe fill modes
         , depthBounds :: VkBool32 -- ^ depth bounds test
         , wideLines :: VkBool32 -- ^ lines with width greater than 1
         , largePoints :: VkBool32 -- ^ points with size greater than 1
         , alphaToOne :: VkBool32 -- ^ the fragment alpha component can be forced to maximum representable alpha value
         , multiViewport :: VkBool32 -- ^ viewport arrays
         , samplerAnisotropy :: VkBool32 -- ^ anisotropic sampler filtering
         , textureCompressionETC2 :: VkBool32 -- ^ ETC texture compression formats
         , textureCompressionASTC_LDR :: VkBool32 -- ^ ASTC LDR texture compression formats
         , textureCompressionBC :: VkBool32 -- ^ BC1-7 texture compressed formats
         , occlusionQueryPrecise :: VkBool32 -- ^ precise occlusion queries returning actual sample counts
         , pipelineStatisticsQuery :: VkBool32 -- ^ pipeline statistics query
         , vertexPipelineStoresAndAtomics :: VkBool32 -- ^ stores and atomic ops on storage buffers and images are supported in vertex, tessellation, and geometry stages
         , fragmentStoresAndAtomics :: VkBool32 -- ^ stores and atomic ops on storage buffers and images are supported in the fragment stage
         , shaderTessellationAndGeometryPointSize :: VkBool32 -- ^ tessellation and geometry stages can export point size
         , shaderImageGatherExtended :: VkBool32 -- ^ image gather with run-time values and independent offsets
         , shaderStorageImageExtendedFormats :: VkBool32 -- ^ the extended set of formats can be used for storage images
         , shaderStorageImageMultisample :: VkBool32 -- ^ multisample images can be used for storage images
         , shaderStorageImageReadWithoutFormat :: VkBool32 -- ^ read from storage image does not require format qualifier
         , shaderStorageImageWriteWithoutFormat :: VkBool32 -- ^ write to storage image does not require format qualifier
         , shaderUniformBufferArrayDynamicIndexing :: VkBool32 -- ^ arrays of uniform buffers can be accessed with dynamically uniform indices
         , shaderSampledImageArrayDynamicIndexing :: VkBool32 -- ^ arrays of sampled images can be accessed with dynamically uniform indices
         , shaderStorageBufferArrayDynamicIndexing :: VkBool32 -- ^ arrays of storage buffers can be accessed with dynamically uniform indices
         , shaderStorageImageArrayDynamicIndexing :: VkBool32 -- ^ arrays of storage images can be accessed with dynamically uniform indices
         , shaderClipDistance :: VkBool32 -- ^ clip distance in shaders
         , shaderCullDistance :: VkBool32 -- ^ cull distance in shaders
         , shaderFloat64 :: VkBool32 -- ^ 64-bit floats (doubles) in shaders
         , shaderInt64 :: VkBool32 -- ^ 64-bit integers in shaders
         , shaderInt16 :: VkBool32 -- ^ 16-bit integers in shaders
         , shaderResourceResidency :: VkBool32 -- ^ shader can use texture operations that return resource residency information (requires sparseNonResident support)
         , shaderResourceMinLod :: VkBool32 -- ^ shader can use texture operations that specify minimum resource LOD
         , sparseBinding :: VkBool32 -- ^ Sparse resources support: Resource memory can be managed at opaque page level rather than object level
         , sparseResidencyBuffer :: VkBool32 -- ^ Sparse resources support: GPU can access partially resident buffers 
         , sparseResidencyImage2D :: VkBool32 -- ^ Sparse resources support: GPU can access partially resident 2D (non-MSAA non-depth/stencil) images 
         , sparseResidencyImage3D :: VkBool32 -- ^ Sparse resources support: GPU can access partially resident 3D images 
         , sparseResidency2Samples :: VkBool32 -- ^ Sparse resources support: GPU can access partially resident MSAA 2D images with 2 samples
         , sparseResidency4Samples :: VkBool32 -- ^ Sparse resources support: GPU can access partially resident MSAA 2D images with 4 samples
         , sparseResidency8Samples :: VkBool32 -- ^ Sparse resources support: GPU can access partially resident MSAA 2D images with 8 samples
         , sparseResidency16Samples :: VkBool32 -- ^ Sparse resources support: GPU can access partially resident MSAA 2D images with 16 samples
         , sparseResidencyAliased :: VkBool32 -- ^ Sparse resources support: GPU can correctly access data aliased into multiple locations (opt-in)
         , variableMultisampleRate :: VkBool32 -- ^ multisample rate must be the same for all pipelines in a subpass
         , inheritedQueries :: VkBool32 -- ^ Queries may be inherited from primary to secondary command buffers
         }

instance Storable VkPhysicalDeviceFeatures where
  sizeOf    _ = #{size      struct VkPhysicalDeviceFeatures}
  alignment _ = #{alignment struct VkPhysicalDeviceFeatures}

  peek ptr = 
    VkPhysicalDeviceFeatures
       <$> peek (offset @"robustBufferAccess" ptr)
       <*> peek (offset @"fullDrawIndexUint32" ptr)
       <*> peek (offset @"imageCubeArray" ptr)
       <*> peek (offset @"independentBlend" ptr)
       <*> peek (offset @"geometryShader" ptr)
       <*> peek (offset @"tessellationShader" ptr)
       <*> peek (offset @"sampleRateShading" ptr)
       <*> peek (offset @"dualSrcBlend" ptr)
       <*> peek (offset @"logicOp" ptr)
       <*> peek (offset @"multiDrawIndirect" ptr)
       <*> peek (offset @"drawIndirectFirstInstance" ptr)
       <*> peek (offset @"depthClamp" ptr)
       <*> peek (offset @"depthBiasClamp" ptr)
       <*> peek (offset @"fillModeNonSolid" ptr)
       <*> peek (offset @"depthBounds" ptr)
       <*> peek (offset @"wideLines" ptr)
       <*> peek (offset @"largePoints" ptr)
       <*> peek (offset @"alphaToOne" ptr)
       <*> peek (offset @"multiViewport" ptr)
       <*> peek (offset @"samplerAnisotropy" ptr)
       <*> peek (offset @"textureCompressionETC2" ptr)
       <*> peek (offset @"textureCompressionASTC_LDR" ptr)
       <*> peek (offset @"textureCompressionBC" ptr)
       <*> peek (offset @"occlusionQueryPrecise" ptr)
       <*> peek (offset @"pipelineStatisticsQuery" ptr)
       <*> peek (offset @"vertexPipelineStoresAndAtomics" ptr)
       <*> peek (offset @"fragmentStoresAndAtomics" ptr)
       <*> peek (offset @"shaderTessellationAndGeometryPointSize" ptr)
       <*> peek (offset @"shaderImageGatherExtended" ptr)
       <*> peek (offset @"shaderStorageImageExtendedFormats" ptr)
       <*> peek (offset @"shaderStorageImageMultisample" ptr)
       <*> peek (offset @"shaderStorageImageReadWithoutFormat" ptr)
       <*> peek (offset @"shaderStorageImageWriteWithoutFormat" ptr)
       <*> peek (offset @"shaderUniformBufferArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderSampledImageArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderStorageBufferArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderStorageImageArrayDynamicIndexing" ptr)
       <*> peek (offset @"shaderClipDistance" ptr)
       <*> peek (offset @"shaderCullDistance" ptr)
       <*> peek (offset @"shaderFloat64" ptr)
       <*> peek (offset @"shaderInt64" ptr)
       <*> peek (offset @"shaderInt16" ptr)
       <*> peek (offset @"shaderResourceResidency" ptr)
       <*> peek (offset @"shaderResourceMinLod" ptr)
       <*> peek (offset @"sparseBinding" ptr)
       <*> peek (offset @"sparseResidencyBuffer" ptr)
       <*> peek (offset @"sparseResidencyImage2D" ptr)
       <*> peek (offset @"sparseResidencyImage3D" ptr)
       <*> peek (offset @"sparseResidency2Samples" ptr)
       <*> peek (offset @"sparseResidency4Samples" ptr)
       <*> peek (offset @"sparseResidency8Samples" ptr)
       <*> peek (offset @"sparseResidency16Samples" ptr)
       <*> peek (offset @"sparseResidencyAliased" ptr)
       <*> peek (offset @"variableMultisampleRate" ptr)
       <*> peek (offset @"inheritedQueries" ptr)

  poke ptr val = do
    pokeField @"robustBufferAccess" ptr val
    pokeField @"fullDrawIndexUint32" ptr val
    pokeField @"imageCubeArray" ptr val
    pokeField @"independentBlend" ptr val
    pokeField @"geometryShader" ptr val
    pokeField @"tessellationShader" ptr val
    pokeField @"sampleRateShading" ptr val
    pokeField @"dualSrcBlend" ptr val
    pokeField @"logicOp" ptr val
    pokeField @"multiDrawIndirect" ptr val
    pokeField @"drawIndirectFirstInstance" ptr val
    pokeField @"depthClamp" ptr val
    pokeField @"depthBiasClamp" ptr val
    pokeField @"fillModeNonSolid" ptr val
    pokeField @"depthBounds" ptr val
    pokeField @"wideLines" ptr val
    pokeField @"largePoints" ptr val
    pokeField @"alphaToOne" ptr val
    pokeField @"multiViewport" ptr val
    pokeField @"samplerAnisotropy" ptr val
    pokeField @"textureCompressionETC2" ptr val
    pokeField @"textureCompressionASTC_LDR" ptr val
    pokeField @"textureCompressionBC" ptr val
    pokeField @"occlusionQueryPrecise" ptr val
    pokeField @"pipelineStatisticsQuery" ptr val
    pokeField @"vertexPipelineStoresAndAtomics" ptr val
    pokeField @"fragmentStoresAndAtomics" ptr val
    pokeField @"shaderTessellationAndGeometryPointSize" ptr val
    pokeField @"shaderImageGatherExtended" ptr val
    pokeField @"shaderStorageImageExtendedFormats" ptr val
    pokeField @"shaderStorageImageMultisample" ptr val
    pokeField @"shaderStorageImageReadWithoutFormat" ptr val
    pokeField @"shaderStorageImageWriteWithoutFormat" ptr val
    pokeField @"shaderUniformBufferArrayDynamicIndexing" ptr val
    pokeField @"shaderSampledImageArrayDynamicIndexing" ptr val
    pokeField @"shaderStorageBufferArrayDynamicIndexing" ptr val
    pokeField @"shaderStorageImageArrayDynamicIndexing" ptr val
    pokeField @"shaderClipDistance" ptr val
    pokeField @"shaderCullDistance" ptr val
    pokeField @"shaderFloat64" ptr val
    pokeField @"shaderInt64" ptr val
    pokeField @"shaderInt16" ptr val
    pokeField @"shaderResourceResidency" ptr val
    pokeField @"shaderResourceMinLod" ptr val
    pokeField @"sparseBinding" ptr val
    pokeField @"sparseResidencyBuffer" ptr val
    pokeField @"sparseResidencyImage2D" ptr val
    pokeField @"sparseResidencyImage3D" ptr val
    pokeField @"sparseResidency2Samples" ptr val
    pokeField @"sparseResidency4Samples" ptr val
    pokeField @"sparseResidency8Samples" ptr val
    pokeField @"sparseResidency16Samples" ptr val
    pokeField @"sparseResidencyAliased" ptr val
    pokeField @"variableMultisampleRate" ptr val
    pokeField @"inheritedQueries" ptr val

instance Offset "robustBufferAccess" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, robustBufferAccess}

instance Offset "fullDrawIndexUint32" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, fullDrawIndexUint32}

instance Offset "imageCubeArray" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, imageCubeArray}

instance Offset "independentBlend" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, independentBlend}

instance Offset "geometryShader" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, geometryShader}

instance Offset "tessellationShader" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, tessellationShader}

instance Offset "sampleRateShading" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, sampleRateShading}

instance Offset "dualSrcBlend" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, dualSrcBlend}

instance Offset "logicOp" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, logicOp}

instance Offset "multiDrawIndirect" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, multiDrawIndirect}

instance Offset "drawIndirectFirstInstance" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, drawIndirectFirstInstance}

instance Offset "depthClamp" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, depthClamp}

instance Offset "depthBiasClamp" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, depthBiasClamp}

instance Offset "fillModeNonSolid" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, fillModeNonSolid}

instance Offset "depthBounds" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, depthBounds}

instance Offset "wideLines" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, wideLines}

instance Offset "largePoints" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, largePoints}

instance Offset "alphaToOne" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, alphaToOne}

instance Offset "multiViewport" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, multiViewport}

instance Offset "samplerAnisotropy" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, samplerAnisotropy}

instance Offset "textureCompressionETC2" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, textureCompressionETC2}

instance Offset "textureCompressionASTC_LDR" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, textureCompressionASTC_LDR}

instance Offset "textureCompressionBC" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, textureCompressionBC}

instance Offset "occlusionQueryPrecise" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, occlusionQueryPrecise}

instance Offset "pipelineStatisticsQuery" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, pipelineStatisticsQuery}

instance Offset "vertexPipelineStoresAndAtomics" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, vertexPipelineStoresAndAtomics}

instance Offset "fragmentStoresAndAtomics" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, fragmentStoresAndAtomics}

instance Offset "shaderTessellationAndGeometryPointSize" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderTessellationAndGeometryPointSize}

instance Offset "shaderImageGatherExtended" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderImageGatherExtended}

instance Offset "shaderStorageImageExtendedFormats" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderStorageImageExtendedFormats}

instance Offset "shaderStorageImageMultisample" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderStorageImageMultisample}

instance Offset "shaderStorageImageReadWithoutFormat" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderStorageImageReadWithoutFormat}

instance Offset "shaderStorageImageWriteWithoutFormat" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderStorageImageWriteWithoutFormat}

instance Offset "shaderUniformBufferArrayDynamicIndexing" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderUniformBufferArrayDynamicIndexing}

instance Offset "shaderSampledImageArrayDynamicIndexing" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderSampledImageArrayDynamicIndexing}

instance Offset "shaderStorageBufferArrayDynamicIndexing" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderStorageBufferArrayDynamicIndexing}

instance Offset "shaderStorageImageArrayDynamicIndexing" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderStorageImageArrayDynamicIndexing}

instance Offset "shaderClipDistance" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderClipDistance}

instance Offset "shaderCullDistance" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderCullDistance}

instance Offset "shaderFloat64" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderFloat64}

instance Offset "shaderInt64" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderInt64}

instance Offset "shaderInt16" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderInt16}

instance Offset "shaderResourceResidency" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderResourceResidency}

instance Offset "shaderResourceMinLod" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, shaderResourceMinLod}

instance Offset "sparseBinding" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, sparseBinding}

instance Offset "sparseResidencyBuffer" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, sparseResidencyBuffer}

instance Offset "sparseResidencyImage2D" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, sparseResidencyImage2D}

instance Offset "sparseResidencyImage3D" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, sparseResidencyImage3D}

instance Offset "sparseResidency2Samples" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, sparseResidency2Samples}

instance Offset "sparseResidency4Samples" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, sparseResidency4Samples}

instance Offset "sparseResidency8Samples" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, sparseResidency8Samples}

instance Offset "sparseResidency16Samples" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, sparseResidency16Samples}

instance Offset "sparseResidencyAliased" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, sparseResidencyAliased}

instance Offset "variableMultisampleRate" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, variableMultisampleRate}

instance Offset "inheritedQueries" VkPhysicalDeviceFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceFeatures, inheritedQueries}