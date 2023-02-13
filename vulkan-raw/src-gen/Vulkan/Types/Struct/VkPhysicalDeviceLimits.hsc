{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPhysicalDeviceLimits where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkSampleCountFlags



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceLimits" #-} VkPhysicalDeviceLimits =
       VkPhysicalDeviceLimits
         { maxImageDimension1D :: #{type uint32_t} -- ^ max 1D image dimension
         , maxImageDimension2D :: #{type uint32_t} -- ^ max 2D image dimension
         , maxImageDimension3D :: #{type uint32_t} -- ^ max 3D image dimension
         , maxImageDimensionCube :: #{type uint32_t} -- ^ max cubemap image dimension
         , maxImageArrayLayers :: #{type uint32_t} -- ^ max layers for image arrays
         , maxTexelBufferElements :: #{type uint32_t} -- ^ max texel buffer size (fstexels)
         , maxUniformBufferRange :: #{type uint32_t} -- ^ max uniform buffer range (bytes)
         , maxStorageBufferRange :: #{type uint32_t} -- ^ max storage buffer range (bytes)
         , maxPushConstantsSize :: #{type uint32_t} -- ^ max size of the push constants pool (bytes)
         , maxMemoryAllocationCount :: #{type uint32_t} -- ^ max number of device memory allocations supported
         , maxSamplerAllocationCount :: #{type uint32_t} -- ^ max number of samplers that can be allocated on a device
         , bufferImageGranularity :: VkDeviceSize -- ^ Granularity (in bytes) at which buffers and images can be bound to adjacent memory for simultaneous usage
         , sparseAddressSpaceSize :: VkDeviceSize -- ^ Total address space available for sparse allocations (bytes)
         , maxBoundDescriptorSets :: #{type uint32_t} -- ^ max number of descriptors sets that can be bound to a pipeline
         , maxPerStageDescriptorSamplers :: #{type uint32_t} -- ^ max number of samplers allowed per-stage in a descriptor set
         , maxPerStageDescriptorUniformBuffers :: #{type uint32_t} -- ^ max number of uniform buffers allowed per-stage in a descriptor set
         , maxPerStageDescriptorStorageBuffers :: #{type uint32_t} -- ^ max number of storage buffers allowed per-stage in a descriptor set
         , maxPerStageDescriptorSampledImages :: #{type uint32_t} -- ^ max number of sampled images allowed per-stage in a descriptor set
         , maxPerStageDescriptorStorageImages :: #{type uint32_t} -- ^ max number of storage images allowed per-stage in a descriptor set
         , maxPerStageDescriptorInputAttachments :: #{type uint32_t} -- ^ max number of input attachments allowed per-stage in a descriptor set
         , maxPerStageResources :: #{type uint32_t} -- ^ max number of resources allowed by a single stage
         , maxDescriptorSetSamplers :: #{type uint32_t} -- ^ max number of samplers allowed in all stages in a descriptor set
         , maxDescriptorSetUniformBuffers :: #{type uint32_t} -- ^ max number of uniform buffers allowed in all stages in a descriptor set
         , maxDescriptorSetUniformBuffersDynamic :: #{type uint32_t} -- ^ max number of dynamic uniform buffers allowed in all stages in a descriptor set
         , maxDescriptorSetStorageBuffers :: #{type uint32_t} -- ^ max number of storage buffers allowed in all stages in a descriptor set
         , maxDescriptorSetStorageBuffersDynamic :: #{type uint32_t} -- ^ max number of dynamic storage buffers allowed in all stages in a descriptor set
         , maxDescriptorSetSampledImages :: #{type uint32_t} -- ^ max number of sampled images allowed in all stages in a descriptor set
         , maxDescriptorSetStorageImages :: #{type uint32_t} -- ^ max number of storage images allowed in all stages in a descriptor set
         , maxDescriptorSetInputAttachments :: #{type uint32_t} -- ^ max number of input attachments allowed in all stages in a descriptor set
         , maxVertexInputAttributes :: #{type uint32_t} -- ^ max number of vertex input attribute slots
         , maxVertexInputBindings :: #{type uint32_t} -- ^ max number of vertex input binding slots
         , maxVertexInputAttributeOffset :: #{type uint32_t} -- ^ max vertex input attribute offset added to vertex buffer offset
         , maxVertexInputBindingStride :: #{type uint32_t} -- ^ max vertex input binding stride
         , maxVertexOutputComponents :: #{type uint32_t} -- ^ max number of output components written by vertex shader
         , maxTessellationGenerationLevel :: #{type uint32_t} -- ^ max level supported by tessellation primitive generator
         , maxTessellationPatchSize :: #{type uint32_t} -- ^ max patch size (vertices)
         , maxTessellationControlPerVertexInputComponents :: #{type uint32_t} -- ^ max number of input components per-vertex in TCS
         , maxTessellationControlPerVertexOutputComponents :: #{type uint32_t} -- ^ max number of output components per-vertex in TCS
         , maxTessellationControlPerPatchOutputComponents :: #{type uint32_t} -- ^ max number of output components per-patch in TCS
         , maxTessellationControlTotalOutputComponents :: #{type uint32_t} -- ^ max total number of per-vertex and per-patch output components in TCS
         , maxTessellationEvaluationInputComponents :: #{type uint32_t} -- ^ max number of input components per vertex in TES
         , maxTessellationEvaluationOutputComponents :: #{type uint32_t} -- ^ max number of output components per vertex in TES
         , maxGeometryShaderInvocations :: #{type uint32_t} -- ^ max invocation count supported in geometry shader
         , maxGeometryInputComponents :: #{type uint32_t} -- ^ max number of input components read in geometry stage
         , maxGeometryOutputComponents :: #{type uint32_t} -- ^ max number of output components written in geometry stage
         , maxGeometryOutputVertices :: #{type uint32_t} -- ^ max number of vertices that can be emitted in geometry stage
         , maxGeometryTotalOutputComponents :: #{type uint32_t} -- ^ max total number of components (all vertices) written in geometry stage
         , maxFragmentInputComponents :: #{type uint32_t} -- ^ max number of input components read in fragment stage
         , maxFragmentOutputAttachments :: #{type uint32_t} -- ^ max number of output attachments written in fragment stage
         , maxFragmentDualSrcAttachments :: #{type uint32_t} -- ^ max number of output attachments written when using dual source blending
         , maxFragmentCombinedOutputResources :: #{type uint32_t} -- ^ max total number of storage buffers, storage images and output buffers
         , maxComputeSharedMemorySize :: #{type uint32_t} -- ^ max total storage size of work group local storage (bytes)
         , maxComputeWorkGroupCount :: #{type uint32_t} -- ^ max num of compute work groups that may be dispatched by a single command (x,y,z)
         , maxComputeWorkGroupInvocations :: #{type uint32_t} -- ^ max total compute invocations in a single local work group
         , maxComputeWorkGroupSize :: #{type uint32_t} -- ^ max local size of a compute work group (x,y,z)
         , subPixelPrecisionBits :: #{type uint32_t} -- ^ number bits of subpixel precision in screen x and y
         , subTexelPrecisionBits :: #{type uint32_t} -- ^ number bits of precision for selecting texel weights
         , mipmapPrecisionBits :: #{type uint32_t} -- ^ number bits of precision for selecting mipmap weights
         , maxDrawIndexedIndexValue :: #{type uint32_t} -- ^ max index value for indexed draw calls (for 32-bit indices)
         , maxDrawIndirectCount :: #{type uint32_t} -- ^ max draw count for indirect drawing calls
         , maxSamplerLodBias :: #{type float} -- ^ max absolute sampler LOD bias
         , maxSamplerAnisotropy :: #{type float} -- ^ max degree of sampler anisotropy
         , maxViewports :: #{type uint32_t} -- ^ max number of active viewports
         , maxViewportDimensions :: #{type uint32_t} -- ^ max viewport dimensions (x,y)
         , viewportBoundsRange :: #{type float} -- ^ viewport bounds range (min,max)
         , viewportSubPixelBits :: #{type uint32_t} -- ^ number bits of subpixel precision for viewport
         , minMemoryMapAlignment :: #{type size_t} -- ^ min required alignment of pointers returned by MapMemory (bytes)
         , minTexelBufferOffsetAlignment :: VkDeviceSize -- ^ min required alignment for texel buffer offsets (bytes) 
         , minUniformBufferOffsetAlignment :: VkDeviceSize -- ^ min required alignment for uniform buffer sizes and offsets (bytes)
         , minStorageBufferOffsetAlignment :: VkDeviceSize -- ^ min required alignment for storage buffer offsets (bytes)
         , minTexelOffset :: #{type int32_t} -- ^ min texel offset for OpTextureSampleOffset
         , maxTexelOffset :: #{type uint32_t} -- ^ max texel offset for OpTextureSampleOffset
         , minTexelGatherOffset :: #{type int32_t} -- ^ min texel offset for OpTextureGatherOffset
         , maxTexelGatherOffset :: #{type uint32_t} -- ^ max texel offset for OpTextureGatherOffset
         , minInterpolationOffset :: #{type float} -- ^ furthest negative offset for interpolateAtOffset
         , maxInterpolationOffset :: #{type float} -- ^ furthest positive offset for interpolateAtOffset
         , subPixelInterpolationOffsetBits :: #{type uint32_t} -- ^ number of subpixel bits for interpolateAtOffset
         , maxFramebufferWidth :: #{type uint32_t} -- ^ max width for a framebuffer
         , maxFramebufferHeight :: #{type uint32_t} -- ^ max height for a framebuffer
         , maxFramebufferLayers :: #{type uint32_t} -- ^ max layer count for a layered framebuffer
         , framebufferColorSampleCounts :: VkSampleCountFlags -- ^ supported color sample counts for a framebuffer
         , framebufferDepthSampleCounts :: VkSampleCountFlags -- ^ supported depth sample counts for a framebuffer
         , framebufferStencilSampleCounts :: VkSampleCountFlags -- ^ supported stencil sample counts for a framebuffer
         , framebufferNoAttachmentsSampleCounts :: VkSampleCountFlags -- ^ supported sample counts for a subpass which uses no attachments
         , maxColorAttachments :: #{type uint32_t} -- ^ max number of color attachments per subpass
         , sampledImageColorSampleCounts :: VkSampleCountFlags -- ^ supported color sample counts for a non-integer sampled image
         , sampledImageIntegerSampleCounts :: VkSampleCountFlags -- ^ supported sample counts for an integer image
         , sampledImageDepthSampleCounts :: VkSampleCountFlags -- ^ supported depth sample counts for a sampled image
         , sampledImageStencilSampleCounts :: VkSampleCountFlags -- ^ supported stencil sample counts for a sampled image
         , storageImageSampleCounts :: VkSampleCountFlags -- ^ supported sample counts for a storage image
         , maxSampleMaskWords :: #{type uint32_t} -- ^ max number of sample mask words
         , timestampComputeAndGraphics :: VkBool32 -- ^ timestamps on graphics and compute queues
         , timestampPeriod :: #{type float} -- ^ number of nanoseconds it takes for timestamp query value to increment by 1
         , maxClipDistances :: #{type uint32_t} -- ^ max number of clip distances
         , maxCullDistances :: #{type uint32_t} -- ^ max number of cull distances
         , maxCombinedClipAndCullDistances :: #{type uint32_t} -- ^ max combined number of user clipping
         , discreteQueuePriorities :: #{type uint32_t} -- ^ distinct queue priorities available 
         , pointSizeRange :: #{type float} -- ^ range (min,max) of supported point sizes
         , lineWidthRange :: #{type float} -- ^ range (min,max) of supported line widths
         , pointSizeGranularity :: #{type float} -- ^ granularity of supported point sizes
         , lineWidthGranularity :: #{type float} -- ^ granularity of supported line widths
         , strictLines :: VkBool32 -- ^ line rasterization follows preferred rules
         , standardSampleLocations :: VkBool32 -- ^ supports standard sample locations for all supported sample counts
         , optimalBufferCopyOffsetAlignment :: VkDeviceSize -- ^ optimal offset of buffer copies
         , optimalBufferCopyRowPitchAlignment :: VkDeviceSize -- ^ optimal pitch of buffer copies
         , nonCoherentAtomSize :: VkDeviceSize -- ^ minimum size and alignment for non-coherent host-mapped device memory access
         }

instance Storable VkPhysicalDeviceLimits where
  sizeOf    _ = #{size      VkPhysicalDeviceLimits}
  alignment _ = #{alignment VkPhysicalDeviceLimits}

  peek ptr = 
    VkPhysicalDeviceLimits
       <$> peek (offset @"maxImageDimension1D" ptr)
       <*> peek (offset @"maxImageDimension2D" ptr)
       <*> peek (offset @"maxImageDimension3D" ptr)
       <*> peek (offset @"maxImageDimensionCube" ptr)
       <*> peek (offset @"maxImageArrayLayers" ptr)
       <*> peek (offset @"maxTexelBufferElements" ptr)
       <*> peek (offset @"maxUniformBufferRange" ptr)
       <*> peek (offset @"maxStorageBufferRange" ptr)
       <*> peek (offset @"maxPushConstantsSize" ptr)
       <*> peek (offset @"maxMemoryAllocationCount" ptr)
       <*> peek (offset @"maxSamplerAllocationCount" ptr)
       <*> peek (offset @"bufferImageGranularity" ptr)
       <*> peek (offset @"sparseAddressSpaceSize" ptr)
       <*> peek (offset @"maxBoundDescriptorSets" ptr)
       <*> peek (offset @"maxPerStageDescriptorSamplers" ptr)
       <*> peek (offset @"maxPerStageDescriptorUniformBuffers" ptr)
       <*> peek (offset @"maxPerStageDescriptorStorageBuffers" ptr)
       <*> peek (offset @"maxPerStageDescriptorSampledImages" ptr)
       <*> peek (offset @"maxPerStageDescriptorStorageImages" ptr)
       <*> peek (offset @"maxPerStageDescriptorInputAttachments" ptr)
       <*> peek (offset @"maxPerStageResources" ptr)
       <*> peek (offset @"maxDescriptorSetSamplers" ptr)
       <*> peek (offset @"maxDescriptorSetUniformBuffers" ptr)
       <*> peek (offset @"maxDescriptorSetUniformBuffersDynamic" ptr)
       <*> peek (offset @"maxDescriptorSetStorageBuffers" ptr)
       <*> peek (offset @"maxDescriptorSetStorageBuffersDynamic" ptr)
       <*> peek (offset @"maxDescriptorSetSampledImages" ptr)
       <*> peek (offset @"maxDescriptorSetStorageImages" ptr)
       <*> peek (offset @"maxDescriptorSetInputAttachments" ptr)
       <*> peek (offset @"maxVertexInputAttributes" ptr)
       <*> peek (offset @"maxVertexInputBindings" ptr)
       <*> peek (offset @"maxVertexInputAttributeOffset" ptr)
       <*> peek (offset @"maxVertexInputBindingStride" ptr)
       <*> peek (offset @"maxVertexOutputComponents" ptr)
       <*> peek (offset @"maxTessellationGenerationLevel" ptr)
       <*> peek (offset @"maxTessellationPatchSize" ptr)
       <*> peek (offset @"maxTessellationControlPerVertexInputComponents" ptr)
       <*> peek (offset @"maxTessellationControlPerVertexOutputComponents" ptr)
       <*> peek (offset @"maxTessellationControlPerPatchOutputComponents" ptr)
       <*> peek (offset @"maxTessellationControlTotalOutputComponents" ptr)
       <*> peek (offset @"maxTessellationEvaluationInputComponents" ptr)
       <*> peek (offset @"maxTessellationEvaluationOutputComponents" ptr)
       <*> peek (offset @"maxGeometryShaderInvocations" ptr)
       <*> peek (offset @"maxGeometryInputComponents" ptr)
       <*> peek (offset @"maxGeometryOutputComponents" ptr)
       <*> peek (offset @"maxGeometryOutputVertices" ptr)
       <*> peek (offset @"maxGeometryTotalOutputComponents" ptr)
       <*> peek (offset @"maxFragmentInputComponents" ptr)
       <*> peek (offset @"maxFragmentOutputAttachments" ptr)
       <*> peek (offset @"maxFragmentDualSrcAttachments" ptr)
       <*> peek (offset @"maxFragmentCombinedOutputResources" ptr)
       <*> peek (offset @"maxComputeSharedMemorySize" ptr)
       <*> peek (offset @"maxComputeWorkGroupCount" ptr)
       <*> peek (offset @"maxComputeWorkGroupInvocations" ptr)
       <*> peek (offset @"maxComputeWorkGroupSize" ptr)
       <*> peek (offset @"subPixelPrecisionBits" ptr)
       <*> peek (offset @"subTexelPrecisionBits" ptr)
       <*> peek (offset @"mipmapPrecisionBits" ptr)
       <*> peek (offset @"maxDrawIndexedIndexValue" ptr)
       <*> peek (offset @"maxDrawIndirectCount" ptr)
       <*> peek (offset @"maxSamplerLodBias" ptr)
       <*> peek (offset @"maxSamplerAnisotropy" ptr)
       <*> peek (offset @"maxViewports" ptr)
       <*> peek (offset @"maxViewportDimensions" ptr)
       <*> peek (offset @"viewportBoundsRange" ptr)
       <*> peek (offset @"viewportSubPixelBits" ptr)
       <*> peek (offset @"minMemoryMapAlignment" ptr)
       <*> peek (offset @"minTexelBufferOffsetAlignment" ptr)
       <*> peek (offset @"minUniformBufferOffsetAlignment" ptr)
       <*> peek (offset @"minStorageBufferOffsetAlignment" ptr)
       <*> peek (offset @"minTexelOffset" ptr)
       <*> peek (offset @"maxTexelOffset" ptr)
       <*> peek (offset @"minTexelGatherOffset" ptr)
       <*> peek (offset @"maxTexelGatherOffset" ptr)
       <*> peek (offset @"minInterpolationOffset" ptr)
       <*> peek (offset @"maxInterpolationOffset" ptr)
       <*> peek (offset @"subPixelInterpolationOffsetBits" ptr)
       <*> peek (offset @"maxFramebufferWidth" ptr)
       <*> peek (offset @"maxFramebufferHeight" ptr)
       <*> peek (offset @"maxFramebufferLayers" ptr)
       <*> peek (offset @"framebufferColorSampleCounts" ptr)
       <*> peek (offset @"framebufferDepthSampleCounts" ptr)
       <*> peek (offset @"framebufferStencilSampleCounts" ptr)
       <*> peek (offset @"framebufferNoAttachmentsSampleCounts" ptr)
       <*> peek (offset @"maxColorAttachments" ptr)
       <*> peek (offset @"sampledImageColorSampleCounts" ptr)
       <*> peek (offset @"sampledImageIntegerSampleCounts" ptr)
       <*> peek (offset @"sampledImageDepthSampleCounts" ptr)
       <*> peek (offset @"sampledImageStencilSampleCounts" ptr)
       <*> peek (offset @"storageImageSampleCounts" ptr)
       <*> peek (offset @"maxSampleMaskWords" ptr)
       <*> peek (offset @"timestampComputeAndGraphics" ptr)
       <*> peek (offset @"timestampPeriod" ptr)
       <*> peek (offset @"maxClipDistances" ptr)
       <*> peek (offset @"maxCullDistances" ptr)
       <*> peek (offset @"maxCombinedClipAndCullDistances" ptr)
       <*> peek (offset @"discreteQueuePriorities" ptr)
       <*> peek (offset @"pointSizeRange" ptr)
       <*> peek (offset @"lineWidthRange" ptr)
       <*> peek (offset @"pointSizeGranularity" ptr)
       <*> peek (offset @"lineWidthGranularity" ptr)
       <*> peek (offset @"strictLines" ptr)
       <*> peek (offset @"standardSampleLocations" ptr)
       <*> peek (offset @"optimalBufferCopyOffsetAlignment" ptr)
       <*> peek (offset @"optimalBufferCopyRowPitchAlignment" ptr)
       <*> peek (offset @"nonCoherentAtomSize" ptr)

  poke ptr val = do
    pokeField @"maxImageDimension1D" ptr val
    pokeField @"maxImageDimension2D" ptr val
    pokeField @"maxImageDimension3D" ptr val
    pokeField @"maxImageDimensionCube" ptr val
    pokeField @"maxImageArrayLayers" ptr val
    pokeField @"maxTexelBufferElements" ptr val
    pokeField @"maxUniformBufferRange" ptr val
    pokeField @"maxStorageBufferRange" ptr val
    pokeField @"maxPushConstantsSize" ptr val
    pokeField @"maxMemoryAllocationCount" ptr val
    pokeField @"maxSamplerAllocationCount" ptr val
    pokeField @"bufferImageGranularity" ptr val
    pokeField @"sparseAddressSpaceSize" ptr val
    pokeField @"maxBoundDescriptorSets" ptr val
    pokeField @"maxPerStageDescriptorSamplers" ptr val
    pokeField @"maxPerStageDescriptorUniformBuffers" ptr val
    pokeField @"maxPerStageDescriptorStorageBuffers" ptr val
    pokeField @"maxPerStageDescriptorSampledImages" ptr val
    pokeField @"maxPerStageDescriptorStorageImages" ptr val
    pokeField @"maxPerStageDescriptorInputAttachments" ptr val
    pokeField @"maxPerStageResources" ptr val
    pokeField @"maxDescriptorSetSamplers" ptr val
    pokeField @"maxDescriptorSetUniformBuffers" ptr val
    pokeField @"maxDescriptorSetUniformBuffersDynamic" ptr val
    pokeField @"maxDescriptorSetStorageBuffers" ptr val
    pokeField @"maxDescriptorSetStorageBuffersDynamic" ptr val
    pokeField @"maxDescriptorSetSampledImages" ptr val
    pokeField @"maxDescriptorSetStorageImages" ptr val
    pokeField @"maxDescriptorSetInputAttachments" ptr val
    pokeField @"maxVertexInputAttributes" ptr val
    pokeField @"maxVertexInputBindings" ptr val
    pokeField @"maxVertexInputAttributeOffset" ptr val
    pokeField @"maxVertexInputBindingStride" ptr val
    pokeField @"maxVertexOutputComponents" ptr val
    pokeField @"maxTessellationGenerationLevel" ptr val
    pokeField @"maxTessellationPatchSize" ptr val
    pokeField @"maxTessellationControlPerVertexInputComponents" ptr val
    pokeField @"maxTessellationControlPerVertexOutputComponents" ptr val
    pokeField @"maxTessellationControlPerPatchOutputComponents" ptr val
    pokeField @"maxTessellationControlTotalOutputComponents" ptr val
    pokeField @"maxTessellationEvaluationInputComponents" ptr val
    pokeField @"maxTessellationEvaluationOutputComponents" ptr val
    pokeField @"maxGeometryShaderInvocations" ptr val
    pokeField @"maxGeometryInputComponents" ptr val
    pokeField @"maxGeometryOutputComponents" ptr val
    pokeField @"maxGeometryOutputVertices" ptr val
    pokeField @"maxGeometryTotalOutputComponents" ptr val
    pokeField @"maxFragmentInputComponents" ptr val
    pokeField @"maxFragmentOutputAttachments" ptr val
    pokeField @"maxFragmentDualSrcAttachments" ptr val
    pokeField @"maxFragmentCombinedOutputResources" ptr val
    pokeField @"maxComputeSharedMemorySize" ptr val
    pokeField @"maxComputeWorkGroupCount" ptr val
    pokeField @"maxComputeWorkGroupInvocations" ptr val
    pokeField @"maxComputeWorkGroupSize" ptr val
    pokeField @"subPixelPrecisionBits" ptr val
    pokeField @"subTexelPrecisionBits" ptr val
    pokeField @"mipmapPrecisionBits" ptr val
    pokeField @"maxDrawIndexedIndexValue" ptr val
    pokeField @"maxDrawIndirectCount" ptr val
    pokeField @"maxSamplerLodBias" ptr val
    pokeField @"maxSamplerAnisotropy" ptr val
    pokeField @"maxViewports" ptr val
    pokeField @"maxViewportDimensions" ptr val
    pokeField @"viewportBoundsRange" ptr val
    pokeField @"viewportSubPixelBits" ptr val
    pokeField @"minMemoryMapAlignment" ptr val
    pokeField @"minTexelBufferOffsetAlignment" ptr val
    pokeField @"minUniformBufferOffsetAlignment" ptr val
    pokeField @"minStorageBufferOffsetAlignment" ptr val
    pokeField @"minTexelOffset" ptr val
    pokeField @"maxTexelOffset" ptr val
    pokeField @"minTexelGatherOffset" ptr val
    pokeField @"maxTexelGatherOffset" ptr val
    pokeField @"minInterpolationOffset" ptr val
    pokeField @"maxInterpolationOffset" ptr val
    pokeField @"subPixelInterpolationOffsetBits" ptr val
    pokeField @"maxFramebufferWidth" ptr val
    pokeField @"maxFramebufferHeight" ptr val
    pokeField @"maxFramebufferLayers" ptr val
    pokeField @"framebufferColorSampleCounts" ptr val
    pokeField @"framebufferDepthSampleCounts" ptr val
    pokeField @"framebufferStencilSampleCounts" ptr val
    pokeField @"framebufferNoAttachmentsSampleCounts" ptr val
    pokeField @"maxColorAttachments" ptr val
    pokeField @"sampledImageColorSampleCounts" ptr val
    pokeField @"sampledImageIntegerSampleCounts" ptr val
    pokeField @"sampledImageDepthSampleCounts" ptr val
    pokeField @"sampledImageStencilSampleCounts" ptr val
    pokeField @"storageImageSampleCounts" ptr val
    pokeField @"maxSampleMaskWords" ptr val
    pokeField @"timestampComputeAndGraphics" ptr val
    pokeField @"timestampPeriod" ptr val
    pokeField @"maxClipDistances" ptr val
    pokeField @"maxCullDistances" ptr val
    pokeField @"maxCombinedClipAndCullDistances" ptr val
    pokeField @"discreteQueuePriorities" ptr val
    pokeField @"pointSizeRange" ptr val
    pokeField @"lineWidthRange" ptr val
    pokeField @"pointSizeGranularity" ptr val
    pokeField @"lineWidthGranularity" ptr val
    pokeField @"strictLines" ptr val
    pokeField @"standardSampleLocations" ptr val
    pokeField @"optimalBufferCopyOffsetAlignment" ptr val
    pokeField @"optimalBufferCopyRowPitchAlignment" ptr val
    pokeField @"nonCoherentAtomSize" ptr val

instance Offset "maxImageDimension1D" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxImageDimension1D}

instance Offset "maxImageDimension2D" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxImageDimension2D}

instance Offset "maxImageDimension3D" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxImageDimension3D}

instance Offset "maxImageDimensionCube" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxImageDimensionCube}

instance Offset "maxImageArrayLayers" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxImageArrayLayers}

instance Offset "maxTexelBufferElements" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxTexelBufferElements}

instance Offset "maxUniformBufferRange" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxUniformBufferRange}

instance Offset "maxStorageBufferRange" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxStorageBufferRange}

instance Offset "maxPushConstantsSize" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxPushConstantsSize}

instance Offset "maxMemoryAllocationCount" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxMemoryAllocationCount}

instance Offset "maxSamplerAllocationCount" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxSamplerAllocationCount}

instance Offset "bufferImageGranularity" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, bufferImageGranularity}

instance Offset "sparseAddressSpaceSize" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, sparseAddressSpaceSize}

instance Offset "maxBoundDescriptorSets" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxBoundDescriptorSets}

instance Offset "maxPerStageDescriptorSamplers" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxPerStageDescriptorSamplers}

instance Offset "maxPerStageDescriptorUniformBuffers" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxPerStageDescriptorUniformBuffers}

instance Offset "maxPerStageDescriptorStorageBuffers" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxPerStageDescriptorStorageBuffers}

instance Offset "maxPerStageDescriptorSampledImages" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxPerStageDescriptorSampledImages}

instance Offset "maxPerStageDescriptorStorageImages" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxPerStageDescriptorStorageImages}

instance Offset "maxPerStageDescriptorInputAttachments" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxPerStageDescriptorInputAttachments}

instance Offset "maxPerStageResources" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxPerStageResources}

instance Offset "maxDescriptorSetSamplers" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxDescriptorSetSamplers}

instance Offset "maxDescriptorSetUniformBuffers" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxDescriptorSetUniformBuffers}

instance Offset "maxDescriptorSetUniformBuffersDynamic" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxDescriptorSetUniformBuffersDynamic}

instance Offset "maxDescriptorSetStorageBuffers" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxDescriptorSetStorageBuffers}

instance Offset "maxDescriptorSetStorageBuffersDynamic" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxDescriptorSetStorageBuffersDynamic}

instance Offset "maxDescriptorSetSampledImages" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxDescriptorSetSampledImages}

instance Offset "maxDescriptorSetStorageImages" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxDescriptorSetStorageImages}

instance Offset "maxDescriptorSetInputAttachments" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxDescriptorSetInputAttachments}

instance Offset "maxVertexInputAttributes" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxVertexInputAttributes}

instance Offset "maxVertexInputBindings" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxVertexInputBindings}

instance Offset "maxVertexInputAttributeOffset" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxVertexInputAttributeOffset}

instance Offset "maxVertexInputBindingStride" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxVertexInputBindingStride}

instance Offset "maxVertexOutputComponents" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxVertexOutputComponents}

instance Offset "maxTessellationGenerationLevel" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxTessellationGenerationLevel}

instance Offset "maxTessellationPatchSize" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxTessellationPatchSize}

instance Offset "maxTessellationControlPerVertexInputComponents" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxTessellationControlPerVertexInputComponents}

instance Offset "maxTessellationControlPerVertexOutputComponents" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxTessellationControlPerVertexOutputComponents}

instance Offset "maxTessellationControlPerPatchOutputComponents" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxTessellationControlPerPatchOutputComponents}

instance Offset "maxTessellationControlTotalOutputComponents" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxTessellationControlTotalOutputComponents}

instance Offset "maxTessellationEvaluationInputComponents" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxTessellationEvaluationInputComponents}

instance Offset "maxTessellationEvaluationOutputComponents" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxTessellationEvaluationOutputComponents}

instance Offset "maxGeometryShaderInvocations" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxGeometryShaderInvocations}

instance Offset "maxGeometryInputComponents" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxGeometryInputComponents}

instance Offset "maxGeometryOutputComponents" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxGeometryOutputComponents}

instance Offset "maxGeometryOutputVertices" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxGeometryOutputVertices}

instance Offset "maxGeometryTotalOutputComponents" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxGeometryTotalOutputComponents}

instance Offset "maxFragmentInputComponents" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxFragmentInputComponents}

instance Offset "maxFragmentOutputAttachments" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxFragmentOutputAttachments}

instance Offset "maxFragmentDualSrcAttachments" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxFragmentDualSrcAttachments}

instance Offset "maxFragmentCombinedOutputResources" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxFragmentCombinedOutputResources}

instance Offset "maxComputeSharedMemorySize" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxComputeSharedMemorySize}

instance Offset "maxComputeWorkGroupCount" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxComputeWorkGroupCount}

instance Offset "maxComputeWorkGroupInvocations" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxComputeWorkGroupInvocations}

instance Offset "maxComputeWorkGroupSize" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxComputeWorkGroupSize}

instance Offset "subPixelPrecisionBits" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, subPixelPrecisionBits}

instance Offset "subTexelPrecisionBits" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, subTexelPrecisionBits}

instance Offset "mipmapPrecisionBits" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, mipmapPrecisionBits}

instance Offset "maxDrawIndexedIndexValue" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxDrawIndexedIndexValue}

instance Offset "maxDrawIndirectCount" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxDrawIndirectCount}

instance Offset "maxSamplerLodBias" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxSamplerLodBias}

instance Offset "maxSamplerAnisotropy" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxSamplerAnisotropy}

instance Offset "maxViewports" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxViewports}

instance Offset "maxViewportDimensions" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxViewportDimensions}

instance Offset "viewportBoundsRange" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, viewportBoundsRange}

instance Offset "viewportSubPixelBits" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, viewportSubPixelBits}

instance Offset "minMemoryMapAlignment" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, minMemoryMapAlignment}

instance Offset "minTexelBufferOffsetAlignment" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, minTexelBufferOffsetAlignment}

instance Offset "minUniformBufferOffsetAlignment" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, minUniformBufferOffsetAlignment}

instance Offset "minStorageBufferOffsetAlignment" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, minStorageBufferOffsetAlignment}

instance Offset "minTexelOffset" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, minTexelOffset}

instance Offset "maxTexelOffset" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxTexelOffset}

instance Offset "minTexelGatherOffset" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, minTexelGatherOffset}

instance Offset "maxTexelGatherOffset" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxTexelGatherOffset}

instance Offset "minInterpolationOffset" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, minInterpolationOffset}

instance Offset "maxInterpolationOffset" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxInterpolationOffset}

instance Offset "subPixelInterpolationOffsetBits" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, subPixelInterpolationOffsetBits}

instance Offset "maxFramebufferWidth" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxFramebufferWidth}

instance Offset "maxFramebufferHeight" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxFramebufferHeight}

instance Offset "maxFramebufferLayers" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxFramebufferLayers}

instance Offset "framebufferColorSampleCounts" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, framebufferColorSampleCounts}

instance Offset "framebufferDepthSampleCounts" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, framebufferDepthSampleCounts}

instance Offset "framebufferStencilSampleCounts" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, framebufferStencilSampleCounts}

instance Offset "framebufferNoAttachmentsSampleCounts" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, framebufferNoAttachmentsSampleCounts}

instance Offset "maxColorAttachments" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxColorAttachments}

instance Offset "sampledImageColorSampleCounts" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, sampledImageColorSampleCounts}

instance Offset "sampledImageIntegerSampleCounts" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, sampledImageIntegerSampleCounts}

instance Offset "sampledImageDepthSampleCounts" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, sampledImageDepthSampleCounts}

instance Offset "sampledImageStencilSampleCounts" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, sampledImageStencilSampleCounts}

instance Offset "storageImageSampleCounts" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, storageImageSampleCounts}

instance Offset "maxSampleMaskWords" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxSampleMaskWords}

instance Offset "timestampComputeAndGraphics" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, timestampComputeAndGraphics}

instance Offset "timestampPeriod" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, timestampPeriod}

instance Offset "maxClipDistances" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxClipDistances}

instance Offset "maxCullDistances" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxCullDistances}

instance Offset "maxCombinedClipAndCullDistances" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, maxCombinedClipAndCullDistances}

instance Offset "discreteQueuePriorities" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, discreteQueuePriorities}

instance Offset "pointSizeRange" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, pointSizeRange}

instance Offset "lineWidthRange" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, lineWidthRange}

instance Offset "pointSizeGranularity" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, pointSizeGranularity}

instance Offset "lineWidthGranularity" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, lineWidthGranularity}

instance Offset "strictLines" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, strictLines}

instance Offset "standardSampleLocations" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, standardSampleLocations}

instance Offset "optimalBufferCopyOffsetAlignment" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, optimalBufferCopyOffsetAlignment}

instance Offset "optimalBufferCopyRowPitchAlignment" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, optimalBufferCopyRowPitchAlignment}

instance Offset "nonCoherentAtomSize" VkPhysicalDeviceLimits where
  rawOffset = #{offset VkPhysicalDeviceLimits, nonCoherentAtomSize}