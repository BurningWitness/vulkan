{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_0

module Vulkan.Core_1_0
  ( -- | Header boilerplate
    pattern VK_USE_64_BIT_PTR_DEFINES
  , VkPtr (..)
  , VulkanPtr
  , pattern VK_NULL_HANDLE

  -- | Fundamental types used by many commands and structures
  , VkBool32
  , VkDeviceAddress
  , VkDeviceSize
  , VkExtent2D (..)
  , VkExtent3D (..)
  , VkFlags
  , VkOffset2D (..)
  , VkOffset3D (..)
  , VkRect2D (..)
  , VkResult
  , pattern VK_SUCCESS
  , pattern VK_NOT_READY
  , pattern VK_TIMEOUT
  , pattern VK_EVENT_SET
  , pattern VK_EVENT_RESET
  , pattern VK_INCOMPLETE
  , pattern VK_ERROR_OUT_OF_HOST_MEMORY
  , pattern VK_ERROR_OUT_OF_DEVICE_MEMORY
  , pattern VK_ERROR_INITIALIZATION_FAILED
  , pattern VK_ERROR_DEVICE_LOST
  , pattern VK_ERROR_MEMORY_MAP_FAILED
  , pattern VK_ERROR_LAYER_NOT_PRESENT
  , pattern VK_ERROR_EXTENSION_NOT_PRESENT
  , pattern VK_ERROR_FEATURE_NOT_PRESENT
  , pattern VK_ERROR_INCOMPATIBLE_DRIVER
  , pattern VK_ERROR_TOO_MANY_OBJECTS
  , pattern VK_ERROR_FORMAT_NOT_SUPPORTED
  , pattern VK_ERROR_FRAGMENTED_POOL
  , pattern VK_ERROR_UNKNOWN
  , VkStructureType
  , pattern VK_STRUCTURE_TYPE_APPLICATION_INFO
  , pattern VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_SUBMIT_INFO
  , pattern VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
  , pattern VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE
  , pattern VK_STRUCTURE_TYPE_BIND_SPARSE_INFO
  , pattern VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_EVENT_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
  , pattern VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
  , pattern VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET
  , pattern VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
  , pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO
  , pattern VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
  , pattern VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
  , pattern VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER
  , pattern VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER
  , pattern VK_STRUCTURE_TYPE_MEMORY_BARRIER
  , pattern VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO
  , pattern VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO

  -- | API constants
  , pattern VK_ATTACHMENT_UNUSED
  , pattern VK_FALSE
  , pattern VK_LOD_CLAMP_NONE
  , pattern VK_QUEUE_FAMILY_IGNORED
  , pattern VK_REMAINING_ARRAY_LAYERS
  , pattern VK_REMAINING_MIP_LEVELS
  , pattern VK_SUBPASS_EXTERNAL
  , pattern VK_TRUE
  , pattern VK_WHOLE_SIZE
  , pattern VK_MAX_MEMORY_TYPES
  , pattern VK_MAX_PHYSICAL_DEVICE_NAME_SIZE
  , pattern VK_UUID_SIZE
  , pattern VK_MAX_EXTENSION_NAME_SIZE
  , pattern VK_MAX_DESCRIPTION_SIZE
  , pattern VK_MAX_MEMORY_HEAPS
  , VkPipelineCacheHeaderVersion
  , pattern VK_PIPELINE_CACHE_HEADER_VERSION_ONE

  -- | These types are part of the API, though not directly used in API commands or data structures
  , VkBaseInStructure (..)
  , VkBaseOutStructure (..)
  , VkBufferMemoryBarrier (..)
  , VkDispatchIndirectCommand (..)
  , VkDrawIndexedIndirectCommand (..)
  , VkDrawIndirectCommand (..)
  , VkImageMemoryBarrier (..)
  , VkMemoryBarrier (..)
  , VkObjectType
  , pattern VK_OBJECT_TYPE_UNKNOWN
  , pattern VK_OBJECT_TYPE_INSTANCE
  , pattern VK_OBJECT_TYPE_PHYSICAL_DEVICE
  , pattern VK_OBJECT_TYPE_DEVICE
  , pattern VK_OBJECT_TYPE_QUEUE
  , pattern VK_OBJECT_TYPE_SEMAPHORE
  , pattern VK_OBJECT_TYPE_COMMAND_BUFFER
  , pattern VK_OBJECT_TYPE_FENCE
  , pattern VK_OBJECT_TYPE_DEVICE_MEMORY
  , pattern VK_OBJECT_TYPE_BUFFER
  , pattern VK_OBJECT_TYPE_IMAGE
  , pattern VK_OBJECT_TYPE_EVENT
  , pattern VK_OBJECT_TYPE_QUERY_POOL
  , pattern VK_OBJECT_TYPE_BUFFER_VIEW
  , pattern VK_OBJECT_TYPE_IMAGE_VIEW
  , pattern VK_OBJECT_TYPE_SHADER_MODULE
  , pattern VK_OBJECT_TYPE_PIPELINE_CACHE
  , pattern VK_OBJECT_TYPE_PIPELINE_LAYOUT
  , pattern VK_OBJECT_TYPE_RENDER_PASS
  , pattern VK_OBJECT_TYPE_PIPELINE
  , pattern VK_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT
  , pattern VK_OBJECT_TYPE_SAMPLER
  , pattern VK_OBJECT_TYPE_DESCRIPTOR_POOL
  , pattern VK_OBJECT_TYPE_DESCRIPTOR_SET
  , pattern VK_OBJECT_TYPE_FRAMEBUFFER
  , pattern VK_OBJECT_TYPE_COMMAND_POOL
  , VkPipelineCacheHeaderVersionOne (..)
  , VkVendorId
  , pattern VK_VENDOR_ID_VIV
  , pattern VK_VENDOR_ID_VSI
  , pattern VK_VENDOR_ID_KAZAN
  , pattern VK_VENDOR_ID_CODEPLAY
  , pattern VK_VENDOR_ID_MESA
  , pattern VK_VENDOR_ID_POCL

  -- | API version macros
  , pattern VK_API_VERSION_1_0
  , pattern VK_HEADER_VERSION
  , pattern VK_HEADER_VERSION_COMPLETE
  , pattern VK_MAKE_VERSION
  , pattern VK_VERSION_MAJOR
  , pattern VK_VERSION_MINOR
  , pattern VK_VERSION_PATCH
  , pattern VK_MAKE_API_VERSION
  , pattern VK_API_VERSION_VARIANT
  , pattern VK_API_VERSION_MAJOR
  , pattern VK_API_VERSION_MINOR
  , pattern VK_API_VERSION_PATCH

  -- | Device initialization
  , PFN_vkAllocationFunction
  , PFN_vkFreeFunction
  , PFN_vkInternalAllocationNotification
  , PFN_vkInternalFreeNotification
  , PFN_vkReallocationFunction
  , PFN_vkVoidFunction
  , VkAllocationCallbacks (..)
  , VkApplicationInfo (..)
  , VkFormat
  , pattern VK_FORMAT_UNDEFINED
  , pattern VK_FORMAT_R4G4_UNORM_PACK8
  , pattern VK_FORMAT_R4G4B4A4_UNORM_PACK16
  , pattern VK_FORMAT_B4G4R4A4_UNORM_PACK16
  , pattern VK_FORMAT_R5G6B5_UNORM_PACK16
  , pattern VK_FORMAT_B5G6R5_UNORM_PACK16
  , pattern VK_FORMAT_R5G5B5A1_UNORM_PACK16
  , pattern VK_FORMAT_B5G5R5A1_UNORM_PACK16
  , pattern VK_FORMAT_A1R5G5B5_UNORM_PACK16
  , pattern VK_FORMAT_R8_UNORM
  , pattern VK_FORMAT_R8_SNORM
  , pattern VK_FORMAT_R8_USCALED
  , pattern VK_FORMAT_R8_SSCALED
  , pattern VK_FORMAT_R8_UINT
  , pattern VK_FORMAT_R8_SINT
  , pattern VK_FORMAT_R8_SRGB
  , pattern VK_FORMAT_R8G8_UNORM
  , pattern VK_FORMAT_R8G8_SNORM
  , pattern VK_FORMAT_R8G8_USCALED
  , pattern VK_FORMAT_R8G8_SSCALED
  , pattern VK_FORMAT_R8G8_UINT
  , pattern VK_FORMAT_R8G8_SINT
  , pattern VK_FORMAT_R8G8_SRGB
  , pattern VK_FORMAT_R8G8B8_UNORM
  , pattern VK_FORMAT_R8G8B8_SNORM
  , pattern VK_FORMAT_R8G8B8_USCALED
  , pattern VK_FORMAT_R8G8B8_SSCALED
  , pattern VK_FORMAT_R8G8B8_UINT
  , pattern VK_FORMAT_R8G8B8_SINT
  , pattern VK_FORMAT_R8G8B8_SRGB
  , pattern VK_FORMAT_B8G8R8_UNORM
  , pattern VK_FORMAT_B8G8R8_SNORM
  , pattern VK_FORMAT_B8G8R8_USCALED
  , pattern VK_FORMAT_B8G8R8_SSCALED
  , pattern VK_FORMAT_B8G8R8_UINT
  , pattern VK_FORMAT_B8G8R8_SINT
  , pattern VK_FORMAT_B8G8R8_SRGB
  , pattern VK_FORMAT_R8G8B8A8_UNORM
  , pattern VK_FORMAT_R8G8B8A8_SNORM
  , pattern VK_FORMAT_R8G8B8A8_USCALED
  , pattern VK_FORMAT_R8G8B8A8_SSCALED
  , pattern VK_FORMAT_R8G8B8A8_UINT
  , pattern VK_FORMAT_R8G8B8A8_SINT
  , pattern VK_FORMAT_R8G8B8A8_SRGB
  , pattern VK_FORMAT_B8G8R8A8_UNORM
  , pattern VK_FORMAT_B8G8R8A8_SNORM
  , pattern VK_FORMAT_B8G8R8A8_USCALED
  , pattern VK_FORMAT_B8G8R8A8_SSCALED
  , pattern VK_FORMAT_B8G8R8A8_UINT
  , pattern VK_FORMAT_B8G8R8A8_SINT
  , pattern VK_FORMAT_B8G8R8A8_SRGB
  , pattern VK_FORMAT_A8B8G8R8_UNORM_PACK32
  , pattern VK_FORMAT_A8B8G8R8_SNORM_PACK32
  , pattern VK_FORMAT_A8B8G8R8_USCALED_PACK32
  , pattern VK_FORMAT_A8B8G8R8_SSCALED_PACK32
  , pattern VK_FORMAT_A8B8G8R8_UINT_PACK32
  , pattern VK_FORMAT_A8B8G8R8_SINT_PACK32
  , pattern VK_FORMAT_A8B8G8R8_SRGB_PACK32
  , pattern VK_FORMAT_A2R10G10B10_UNORM_PACK32
  , pattern VK_FORMAT_A2R10G10B10_SNORM_PACK32
  , pattern VK_FORMAT_A2R10G10B10_USCALED_PACK32
  , pattern VK_FORMAT_A2R10G10B10_SSCALED_PACK32
  , pattern VK_FORMAT_A2R10G10B10_UINT_PACK32
  , pattern VK_FORMAT_A2R10G10B10_SINT_PACK32
  , pattern VK_FORMAT_A2B10G10R10_UNORM_PACK32
  , pattern VK_FORMAT_A2B10G10R10_SNORM_PACK32
  , pattern VK_FORMAT_A2B10G10R10_USCALED_PACK32
  , pattern VK_FORMAT_A2B10G10R10_SSCALED_PACK32
  , pattern VK_FORMAT_A2B10G10R10_UINT_PACK32
  , pattern VK_FORMAT_A2B10G10R10_SINT_PACK32
  , pattern VK_FORMAT_R16_UNORM
  , pattern VK_FORMAT_R16_SNORM
  , pattern VK_FORMAT_R16_USCALED
  , pattern VK_FORMAT_R16_SSCALED
  , pattern VK_FORMAT_R16_UINT
  , pattern VK_FORMAT_R16_SINT
  , pattern VK_FORMAT_R16_SFLOAT
  , pattern VK_FORMAT_R16G16_UNORM
  , pattern VK_FORMAT_R16G16_SNORM
  , pattern VK_FORMAT_R16G16_USCALED
  , pattern VK_FORMAT_R16G16_SSCALED
  , pattern VK_FORMAT_R16G16_UINT
  , pattern VK_FORMAT_R16G16_SINT
  , pattern VK_FORMAT_R16G16_SFLOAT
  , pattern VK_FORMAT_R16G16B16_UNORM
  , pattern VK_FORMAT_R16G16B16_SNORM
  , pattern VK_FORMAT_R16G16B16_USCALED
  , pattern VK_FORMAT_R16G16B16_SSCALED
  , pattern VK_FORMAT_R16G16B16_UINT
  , pattern VK_FORMAT_R16G16B16_SINT
  , pattern VK_FORMAT_R16G16B16_SFLOAT
  , pattern VK_FORMAT_R16G16B16A16_UNORM
  , pattern VK_FORMAT_R16G16B16A16_SNORM
  , pattern VK_FORMAT_R16G16B16A16_USCALED
  , pattern VK_FORMAT_R16G16B16A16_SSCALED
  , pattern VK_FORMAT_R16G16B16A16_UINT
  , pattern VK_FORMAT_R16G16B16A16_SINT
  , pattern VK_FORMAT_R16G16B16A16_SFLOAT
  , pattern VK_FORMAT_R32_UINT
  , pattern VK_FORMAT_R32_SINT
  , pattern VK_FORMAT_R32_SFLOAT
  , pattern VK_FORMAT_R32G32_UINT
  , pattern VK_FORMAT_R32G32_SINT
  , pattern VK_FORMAT_R32G32_SFLOAT
  , pattern VK_FORMAT_R32G32B32_UINT
  , pattern VK_FORMAT_R32G32B32_SINT
  , pattern VK_FORMAT_R32G32B32_SFLOAT
  , pattern VK_FORMAT_R32G32B32A32_UINT
  , pattern VK_FORMAT_R32G32B32A32_SINT
  , pattern VK_FORMAT_R32G32B32A32_SFLOAT
  , pattern VK_FORMAT_R64_UINT
  , pattern VK_FORMAT_R64_SINT
  , pattern VK_FORMAT_R64_SFLOAT
  , pattern VK_FORMAT_R64G64_UINT
  , pattern VK_FORMAT_R64G64_SINT
  , pattern VK_FORMAT_R64G64_SFLOAT
  , pattern VK_FORMAT_R64G64B64_UINT
  , pattern VK_FORMAT_R64G64B64_SINT
  , pattern VK_FORMAT_R64G64B64_SFLOAT
  , pattern VK_FORMAT_R64G64B64A64_UINT
  , pattern VK_FORMAT_R64G64B64A64_SINT
  , pattern VK_FORMAT_R64G64B64A64_SFLOAT
  , pattern VK_FORMAT_B10G11R11_UFLOAT_PACK32
  , pattern VK_FORMAT_E5B9G9R9_UFLOAT_PACK32
  , pattern VK_FORMAT_D16_UNORM
  , pattern VK_FORMAT_X8_D24_UNORM_PACK32
  , pattern VK_FORMAT_D32_SFLOAT
  , pattern VK_FORMAT_S8_UINT
  , pattern VK_FORMAT_D16_UNORM_S8_UINT
  , pattern VK_FORMAT_D24_UNORM_S8_UINT
  , pattern VK_FORMAT_D32_SFLOAT_S8_UINT
  , pattern VK_FORMAT_BC1_RGB_UNORM_BLOCK
  , pattern VK_FORMAT_BC1_RGB_SRGB_BLOCK
  , pattern VK_FORMAT_BC1_RGBA_UNORM_BLOCK
  , pattern VK_FORMAT_BC1_RGBA_SRGB_BLOCK
  , pattern VK_FORMAT_BC2_UNORM_BLOCK
  , pattern VK_FORMAT_BC2_SRGB_BLOCK
  , pattern VK_FORMAT_BC3_UNORM_BLOCK
  , pattern VK_FORMAT_BC3_SRGB_BLOCK
  , pattern VK_FORMAT_BC4_UNORM_BLOCK
  , pattern VK_FORMAT_BC4_SNORM_BLOCK
  , pattern VK_FORMAT_BC5_UNORM_BLOCK
  , pattern VK_FORMAT_BC5_SNORM_BLOCK
  , pattern VK_FORMAT_BC6H_UFLOAT_BLOCK
  , pattern VK_FORMAT_BC6H_SFLOAT_BLOCK
  , pattern VK_FORMAT_BC7_UNORM_BLOCK
  , pattern VK_FORMAT_BC7_SRGB_BLOCK
  , pattern VK_FORMAT_ETC2_R8G8B8_UNORM_BLOCK
  , pattern VK_FORMAT_ETC2_R8G8B8_SRGB_BLOCK
  , pattern VK_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK
  , pattern VK_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK
  , pattern VK_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK
  , pattern VK_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK
  , pattern VK_FORMAT_EAC_R11_UNORM_BLOCK
  , pattern VK_FORMAT_EAC_R11_SNORM_BLOCK
  , pattern VK_FORMAT_EAC_R11G11_UNORM_BLOCK
  , pattern VK_FORMAT_EAC_R11G11_SNORM_BLOCK
  , pattern VK_FORMAT_ASTC_4x4_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_4x4_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_5x4_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_5x4_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_5x5_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_5x5_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_6x5_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_6x5_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_6x6_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_6x6_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_8x5_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_8x5_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_8x6_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_8x6_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_8x8_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_8x8_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_10x5_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_10x5_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_10x6_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_10x6_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_10x8_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_10x8_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_10x10_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_10x10_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_12x10_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_12x10_SRGB_BLOCK
  , pattern VK_FORMAT_ASTC_12x12_UNORM_BLOCK
  , pattern VK_FORMAT_ASTC_12x12_SRGB_BLOCK
  , VkFormatFeatureFlagBits
  , pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
  , pattern VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
  , pattern VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
  , pattern VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
  , pattern VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
  , pattern VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
  , pattern VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT
  , pattern VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
  , pattern VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
  , pattern VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
  , pattern VK_FORMAT_FEATURE_BLIT_SRC_BIT
  , pattern VK_FORMAT_FEATURE_BLIT_DST_BIT
  , pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
  , VkFormatFeatureFlags
  , VkFormatProperties (..)
  , VkImageCreateFlagBits
  , pattern VK_IMAGE_CREATE_SPARSE_BINDING_BIT
  , pattern VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT
  , pattern VK_IMAGE_CREATE_SPARSE_ALIASED_BIT
  , pattern VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT
  , pattern VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT
  , VkImageCreateFlags
  , VkImageFormatProperties (..)
  , VkImageTiling
  , pattern VK_IMAGE_TILING_OPTIMAL
  , pattern VK_IMAGE_TILING_LINEAR
  , VkImageType
  , pattern VK_IMAGE_TYPE_1D
  , pattern VK_IMAGE_TYPE_2D
  , pattern VK_IMAGE_TYPE_3D
  , VkImageUsageFlagBits
  , pattern VK_IMAGE_USAGE_TRANSFER_SRC_BIT
  , pattern VK_IMAGE_USAGE_TRANSFER_DST_BIT
  , pattern VK_IMAGE_USAGE_SAMPLED_BIT
  , pattern VK_IMAGE_USAGE_STORAGE_BIT
  , pattern VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
  , pattern VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT
  , pattern VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT
  , pattern VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT
  , VkImageUsageFlags
  , VkInstance_T
  , VkInstance
  , VkInstanceCreateFlags
  , VkInstanceCreateFlagBits
  , VkInstanceCreateInfo (..)
  , VkInternalAllocationType
  , pattern VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE
  , VkMemoryHeap (..)
  , VkMemoryHeapFlagBits
  , pattern VK_MEMORY_HEAP_DEVICE_LOCAL_BIT
  , VkMemoryHeapFlags
  , VkMemoryPropertyFlagBits
  , pattern VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
  , pattern VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
  , pattern VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
  , pattern VK_MEMORY_PROPERTY_HOST_CACHED_BIT
  , pattern VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT
  , VkMemoryPropertyFlags
  , VkMemoryType (..)
  , VkPhysicalDevice_T
  , VkPhysicalDevice
  , VkPhysicalDeviceFeatures (..)
  , VkPhysicalDeviceLimits (..)
  , VkPhysicalDeviceMemoryProperties (..)
  , VkPhysicalDeviceProperties (..)
  , VkPhysicalDeviceSparseProperties (..)
  , VkPhysicalDeviceType
  , pattern VK_PHYSICAL_DEVICE_TYPE_OTHER
  , pattern VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU
  , pattern VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU
  , pattern VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU
  , pattern VK_PHYSICAL_DEVICE_TYPE_CPU
  , VkQueueFamilyProperties (..)
  , VkQueueFlagBits
  , pattern VK_QUEUE_GRAPHICS_BIT
  , pattern VK_QUEUE_COMPUTE_BIT
  , pattern VK_QUEUE_TRANSFER_BIT
  , pattern VK_QUEUE_SPARSE_BINDING_BIT
  , VkQueueFlags
  , VkSampleCountFlagBits
  , pattern VK_SAMPLE_COUNT_1_BIT
  , pattern VK_SAMPLE_COUNT_2_BIT
  , pattern VK_SAMPLE_COUNT_4_BIT
  , pattern VK_SAMPLE_COUNT_8_BIT
  , pattern VK_SAMPLE_COUNT_16_BIT
  , pattern VK_SAMPLE_COUNT_32_BIT
  , pattern VK_SAMPLE_COUNT_64_BIT
  , VkSampleCountFlags
  , VkSystemAllocationScope
  , pattern VK_SYSTEM_ALLOCATION_SCOPE_COMMAND
  , pattern VK_SYSTEM_ALLOCATION_SCOPE_OBJECT
  , pattern VK_SYSTEM_ALLOCATION_SCOPE_CACHE
  , pattern VK_SYSTEM_ALLOCATION_SCOPE_DEVICE
  , pattern VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE
  , VkCreateInstance
  , vkFunCreateInstance
  , vkCreateInstance
  , vkCreateInstanceUnsafe
  , VkDestroyInstance
  , vkFunDestroyInstance
  , vkDestroyInstance
  , vkDestroyInstanceUnsafe
  , VkEnumeratePhysicalDevices
  , vkFunEnumeratePhysicalDevices
  , vkEnumeratePhysicalDevices
  , vkEnumeratePhysicalDevicesUnsafe
  , VkGetPhysicalDeviceFeatures
  , vkFunGetPhysicalDeviceFeatures
  , vkGetPhysicalDeviceFeatures
  , vkGetPhysicalDeviceFeaturesUnsafe
  , VkGetPhysicalDeviceFormatProperties
  , vkFunGetPhysicalDeviceFormatProperties
  , vkGetPhysicalDeviceFormatProperties
  , vkGetPhysicalDeviceFormatPropertiesUnsafe
  , VkGetPhysicalDeviceImageFormatProperties
  , vkFunGetPhysicalDeviceImageFormatProperties
  , vkGetPhysicalDeviceImageFormatProperties
  , vkGetPhysicalDeviceImageFormatPropertiesUnsafe
  , VkGetPhysicalDeviceProperties
  , vkFunGetPhysicalDeviceProperties
  , vkGetPhysicalDeviceProperties
  , vkGetPhysicalDevicePropertiesUnsafe
  , VkGetPhysicalDeviceQueueFamilyProperties
  , vkFunGetPhysicalDeviceQueueFamilyProperties
  , vkGetPhysicalDeviceQueueFamilyProperties
  , vkGetPhysicalDeviceQueueFamilyPropertiesUnsafe
  , VkGetPhysicalDeviceMemoryProperties
  , vkFunGetPhysicalDeviceMemoryProperties
  , vkGetPhysicalDeviceMemoryProperties
  , vkGetPhysicalDeviceMemoryPropertiesUnsafe
  , VkGetInstanceProcAddr
  , vkFunGetInstanceProcAddr
  , vkGetInstanceProcAddr
  , vkGetInstanceProcAddrUnsafe
  , VkGetDeviceProcAddr
  , vkFunGetDeviceProcAddr
  , vkGetDeviceProcAddr
  , vkGetDeviceProcAddrUnsafe
  , VkFun (..)
  , vkGetInstanceFunPtr
  , vkGetInstanceFunPtrUnsafe
  , vkGetDeviceFunPtr
  , vkGetDeviceFunPtrUnsafe

  -- | Device commands
  , VkDevice_T
  , VkDevice
  , VkDeviceCreateFlags
  , VkDeviceCreateInfo (..)
  , VkDeviceQueueCreateFlags
  , VkDeviceQueueCreateInfo (..)
  , VkCreateDevice
  , vkFunCreateDevice
  , vkCreateDevice
  , vkCreateDeviceUnsafe
  , VkDestroyDevice
  , vkFunDestroyDevice
  , vkDestroyDevice
  , vkDestroyDeviceUnsafe

  -- | Extension discovery commands
  , VkExtensionProperties (..)
  , VkEnumerateInstanceExtensionProperties
  , vkFunEnumerateInstanceExtensionProperties
  , vkEnumerateInstanceExtensionProperties
  , vkEnumerateInstanceExtensionPropertiesUnsafe
  , VkEnumerateDeviceExtensionProperties
  , vkFunEnumerateDeviceExtensionProperties
  , vkEnumerateDeviceExtensionProperties
  , vkEnumerateDeviceExtensionPropertiesUnsafe

  -- | Layer discovery commands
  , VkLayerProperties (..)
  , VkEnumerateInstanceLayerProperties
  , vkFunEnumerateInstanceLayerProperties
  , vkEnumerateInstanceLayerProperties
  , vkEnumerateInstanceLayerPropertiesUnsafe
  , VkEnumerateDeviceLayerProperties
  , vkFunEnumerateDeviceLayerProperties
  , vkEnumerateDeviceLayerProperties
  , vkEnumerateDeviceLayerPropertiesUnsafe

  -- | Queue commands
  , VkPipelineStageFlagBits
  , pattern VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT
  , pattern VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT
  , pattern VK_PIPELINE_STAGE_VERTEX_INPUT_BIT
  , pattern VK_PIPELINE_STAGE_VERTEX_SHADER_BIT
  , pattern VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT
  , pattern VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT
  , pattern VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT
  , pattern VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT
  , pattern VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT
  , pattern VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT
  , pattern VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
  , pattern VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT
  , pattern VK_PIPELINE_STAGE_TRANSFER_BIT
  , pattern VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT
  , pattern VK_PIPELINE_STAGE_HOST_BIT
  , pattern VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT
  , pattern VK_PIPELINE_STAGE_ALL_COMMANDS_BIT
  , VkPipelineStageFlags
  , VkQueue_T
  , VkQueue
  , VkSubmitInfo (..)
  , VkGetDeviceQueue
  , vkFunGetDeviceQueue
  , vkGetDeviceQueue
  , vkGetDeviceQueueUnsafe
  , VkQueueSubmit
  , vkFunQueueSubmit
  , vkQueueSubmit
  , vkQueueSubmitUnsafe
  , VkQueueWaitIdle
  , vkFunQueueWaitIdle
  , vkQueueWaitIdle
  , vkQueueWaitIdleUnsafe
  , VkDeviceWaitIdle
  , vkFunDeviceWaitIdle
  , vkDeviceWaitIdle
  , vkDeviceWaitIdleUnsafe

  -- | Memory commands
  , VkMappedMemoryRange (..)
  , VkMemoryAllocateInfo (..)
  , VkMemoryMapFlags
  , VkAllocateMemory
  , vkFunAllocateMemory
  , vkAllocateMemory
  , vkAllocateMemoryUnsafe
  , VkFreeMemory
  , vkFunFreeMemory
  , vkFreeMemory
  , vkFreeMemoryUnsafe
  , VkMapMemory
  , vkFunMapMemory
  , vkMapMemory
  , vkMapMemoryUnsafe
  , VkUnmapMemory
  , vkFunUnmapMemory
  , vkUnmapMemory
  , vkUnmapMemoryUnsafe
  , VkFlushMappedMemoryRanges
  , vkFunFlushMappedMemoryRanges
  , vkFlushMappedMemoryRanges
  , vkFlushMappedMemoryRangesUnsafe
  , VkInvalidateMappedMemoryRanges
  , vkFunInvalidateMappedMemoryRanges
  , vkInvalidateMappedMemoryRanges
  , vkInvalidateMappedMemoryRangesUnsafe
  , VkGetDeviceMemoryCommitment
  , vkFunGetDeviceMemoryCommitment
  , vkGetDeviceMemoryCommitment
  , vkGetDeviceMemoryCommitmentUnsafe

  -- | Memory management API commands
  , VkDeviceMemory_T
  , VkDeviceMemory
  , VkMemoryRequirements (..)
  , VkBindBufferMemory
  , vkFunBindBufferMemory
  , vkBindBufferMemory
  , vkBindBufferMemoryUnsafe
  , VkBindImageMemory
  , vkFunBindImageMemory
  , vkBindImageMemory
  , vkBindImageMemoryUnsafe
  , VkGetBufferMemoryRequirements
  , vkFunGetBufferMemoryRequirements
  , vkGetBufferMemoryRequirements
  , vkGetBufferMemoryRequirementsUnsafe
  , VkGetImageMemoryRequirements
  , vkFunGetImageMemoryRequirements
  , vkGetImageMemoryRequirements
  , vkGetImageMemoryRequirementsUnsafe

  -- | Sparse resource memory management API commands
  , VkBindSparseInfo (..)
  , VkImageAspectFlagBits
  , pattern VK_IMAGE_ASPECT_COLOR_BIT
  , pattern VK_IMAGE_ASPECT_DEPTH_BIT
  , pattern VK_IMAGE_ASPECT_STENCIL_BIT
  , pattern VK_IMAGE_ASPECT_METADATA_BIT
  , VkImageAspectFlags
  , VkImageSubresource (..)
  , VkSparseBufferMemoryBindInfo (..)
  , VkSparseImageFormatFlagBits
  , pattern VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT
  , pattern VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT
  , pattern VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT
  , VkSparseImageFormatFlags
  , VkSparseImageFormatProperties (..)
  , VkSparseImageMemoryBind (..)
  , VkSparseImageMemoryBindInfo (..)
  , VkSparseImageMemoryRequirements (..)
  , VkSparseImageOpaqueMemoryBindInfo (..)
  , VkSparseMemoryBind (..)
  , VkSparseMemoryBindFlagBits
  , pattern VK_SPARSE_MEMORY_BIND_METADATA_BIT
  , VkSparseMemoryBindFlags
  , VkGetImageSparseMemoryRequirements
  , vkFunGetImageSparseMemoryRequirements
  , vkGetImageSparseMemoryRequirements
  , vkGetImageSparseMemoryRequirementsUnsafe
  , VkGetPhysicalDeviceSparseImageFormatProperties
  , vkFunGetPhysicalDeviceSparseImageFormatProperties
  , vkGetPhysicalDeviceSparseImageFormatProperties
  , vkGetPhysicalDeviceSparseImageFormatPropertiesUnsafe
  , VkQueueBindSparse
  , vkFunQueueBindSparse
  , vkQueueBindSparse
  , vkQueueBindSparseUnsafe

  -- | Fence commands
  , VkFence_T
  , VkFence
  , VkFenceCreateFlagBits
  , pattern VK_FENCE_CREATE_SIGNALED_BIT
  , VkFenceCreateFlags
  , VkFenceCreateInfo (..)
  , VkCreateFence
  , vkFunCreateFence
  , vkCreateFence
  , vkCreateFenceUnsafe
  , VkDestroyFence
  , vkFunDestroyFence
  , vkDestroyFence
  , vkDestroyFenceUnsafe
  , VkResetFences
  , vkFunResetFences
  , vkResetFences
  , vkResetFencesUnsafe
  , VkGetFenceStatus
  , vkFunGetFenceStatus
  , vkGetFenceStatus
  , vkGetFenceStatusUnsafe
  , VkWaitForFences
  , vkFunWaitForFences
  , vkWaitForFences
  , vkWaitForFencesUnsafe

  -- | Queue semaphore commands
  , VkSemaphore_T
  , VkSemaphore
  , VkSemaphoreCreateFlags
  , VkSemaphoreCreateInfo (..)
  , VkCreateSemaphore
  , vkFunCreateSemaphore
  , vkCreateSemaphore
  , vkCreateSemaphoreUnsafe
  , VkDestroySemaphore
  , vkFunDestroySemaphore
  , vkDestroySemaphore
  , vkDestroySemaphoreUnsafe

  -- | Event commands
  , VkEvent_T
  , VkEvent
  , VkEventCreateFlags
  , VkEventCreateFlagBits
  , VkEventCreateInfo (..)
  , VkCreateEvent
  , vkFunCreateEvent
  , vkCreateEvent
  , vkCreateEventUnsafe
  , VkDestroyEvent
  , vkFunDestroyEvent
  , vkDestroyEvent
  , vkDestroyEventUnsafe
  , VkGetEventStatus
  , vkFunGetEventStatus
  , vkGetEventStatus
  , vkGetEventStatusUnsafe
  , VkSetEvent
  , vkFunSetEvent
  , vkSetEvent
  , vkSetEventUnsafe
  , VkResetEvent
  , vkFunResetEvent
  , vkResetEvent
  , vkResetEventUnsafe

  -- | Query commands
  , VkQueryPipelineStatisticFlagBits
  , pattern VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT
  , pattern VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT
  , pattern VK_QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT
  , pattern VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT
  , pattern VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT
  , pattern VK_QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT
  , pattern VK_QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT
  , pattern VK_QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT
  , pattern VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT
  , pattern VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT
  , pattern VK_QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT
  , VkQueryPipelineStatisticFlags
  , VkQueryPool_T
  , VkQueryPool
  , VkQueryPoolCreateFlags
  , VkQueryPoolCreateInfo (..)
  , VkQueryResultFlagBits
  , pattern VK_QUERY_RESULT_64_BIT
  , pattern VK_QUERY_RESULT_WAIT_BIT
  , pattern VK_QUERY_RESULT_WITH_AVAILABILITY_BIT
  , pattern VK_QUERY_RESULT_PARTIAL_BIT
  , VkQueryResultFlags
  , VkQueryType
  , pattern VK_QUERY_TYPE_OCCLUSION
  , pattern VK_QUERY_TYPE_PIPELINE_STATISTICS
  , pattern VK_QUERY_TYPE_TIMESTAMP
  , VkCreateQueryPool
  , vkFunCreateQueryPool
  , vkCreateQueryPool
  , vkCreateQueryPoolUnsafe
  , VkDestroyQueryPool
  , vkFunDestroyQueryPool
  , vkDestroyQueryPool
  , vkDestroyQueryPoolUnsafe
  , VkGetQueryPoolResults
  , vkFunGetQueryPoolResults
  , vkGetQueryPoolResults
  , vkGetQueryPoolResultsUnsafe

  -- | Buffer commands
  , VkBuffer_T
  , VkBuffer
  , VkBufferCreateFlagBits
  , pattern VK_BUFFER_CREATE_SPARSE_BINDING_BIT
  , pattern VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT
  , pattern VK_BUFFER_CREATE_SPARSE_ALIASED_BIT
  , VkBufferCreateFlags
  , VkBufferCreateInfo (..)
  , VkBufferUsageFlagBits
  , pattern VK_BUFFER_USAGE_TRANSFER_SRC_BIT
  , pattern VK_BUFFER_USAGE_TRANSFER_DST_BIT
  , pattern VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT
  , pattern VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT
  , pattern VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT
  , pattern VK_BUFFER_USAGE_STORAGE_BUFFER_BIT
  , pattern VK_BUFFER_USAGE_INDEX_BUFFER_BIT
  , pattern VK_BUFFER_USAGE_VERTEX_BUFFER_BIT
  , pattern VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT
  , VkBufferUsageFlags
  , VkSharingMode
  , pattern VK_SHARING_MODE_EXCLUSIVE
  , pattern VK_SHARING_MODE_CONCURRENT
  , VkCreateBuffer
  , vkFunCreateBuffer
  , vkCreateBuffer
  , vkCreateBufferUnsafe
  , VkDestroyBuffer
  , vkFunDestroyBuffer
  , vkDestroyBuffer
  , vkDestroyBufferUnsafe

  -- | Buffer view commands
  , VkBufferView_T
  , VkBufferView
  , VkBufferViewCreateFlags
  , VkBufferViewCreateInfo (..)
  , VkCreateBufferView
  , vkFunCreateBufferView
  , vkCreateBufferView
  , vkCreateBufferViewUnsafe
  , VkDestroyBufferView
  , vkFunDestroyBufferView
  , vkDestroyBufferView
  , vkDestroyBufferViewUnsafe

  -- | Image commands
  , VkImage_T
  , VkImage
  , VkImageCreateInfo (..)
  , VkImageLayout
  , pattern VK_IMAGE_LAYOUT_UNDEFINED
  , pattern VK_IMAGE_LAYOUT_GENERAL
  , pattern VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
  , pattern VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
  , pattern VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL
  , pattern VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL
  , pattern VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL
  , pattern VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL
  , pattern VK_IMAGE_LAYOUT_PREINITIALIZED
  , VkSubresourceLayout (..)
  , VkCreateImage
  , vkFunCreateImage
  , vkCreateImage
  , vkCreateImageUnsafe
  , VkDestroyImage
  , vkFunDestroyImage
  , vkDestroyImage
  , vkDestroyImageUnsafe
  , VkGetImageSubresourceLayout
  , vkFunGetImageSubresourceLayout
  , vkGetImageSubresourceLayout
  , vkGetImageSubresourceLayoutUnsafe

  -- | Image view commands
  , VkComponentMapping (..)
  , VkComponentSwizzle
  , pattern VK_COMPONENT_SWIZZLE_IDENTITY
  , pattern VK_COMPONENT_SWIZZLE_ZERO
  , pattern VK_COMPONENT_SWIZZLE_ONE
  , pattern VK_COMPONENT_SWIZZLE_R
  , pattern VK_COMPONENT_SWIZZLE_G
  , pattern VK_COMPONENT_SWIZZLE_B
  , pattern VK_COMPONENT_SWIZZLE_A
  , VkImageSubresourceRange (..)
  , VkImageView_T
  , VkImageView
  , VkImageViewCreateFlagBits
  , VkImageViewCreateFlags
  , VkImageViewCreateInfo (..)
  , VkImageViewType
  , pattern VK_IMAGE_VIEW_TYPE_1D
  , pattern VK_IMAGE_VIEW_TYPE_2D
  , pattern VK_IMAGE_VIEW_TYPE_3D
  , pattern VK_IMAGE_VIEW_TYPE_CUBE
  , pattern VK_IMAGE_VIEW_TYPE_1D_ARRAY
  , pattern VK_IMAGE_VIEW_TYPE_2D_ARRAY
  , pattern VK_IMAGE_VIEW_TYPE_CUBE_ARRAY
  , VkCreateImageView
  , vkFunCreateImageView
  , vkCreateImageView
  , vkCreateImageViewUnsafe
  , VkDestroyImageView
  , vkFunDestroyImageView
  , vkDestroyImageView
  , vkDestroyImageViewUnsafe

  -- | Shader commands
  , VkShaderModule_T
  , VkShaderModule
  , VkShaderModuleCreateFlags
  , VkShaderModuleCreateInfo (..)
  , VkCreateShaderModule
  , vkFunCreateShaderModule
  , vkCreateShaderModule
  , vkCreateShaderModuleUnsafe
  , VkDestroyShaderModule
  , vkFunDestroyShaderModule
  , vkDestroyShaderModule
  , vkDestroyShaderModuleUnsafe

  -- | Pipeline Cache commands
  , VkPipelineCache_T
  , VkPipelineCache
  , VkPipelineCacheCreateFlags
  , VkPipelineCacheCreateInfo (..)
  , VkCreatePipelineCache
  , vkFunCreatePipelineCache
  , vkCreatePipelineCache
  , vkCreatePipelineCacheUnsafe
  , VkDestroyPipelineCache
  , vkFunDestroyPipelineCache
  , vkDestroyPipelineCache
  , vkDestroyPipelineCacheUnsafe
  , VkGetPipelineCacheData
  , vkFunGetPipelineCacheData
  , vkGetPipelineCacheData
  , vkGetPipelineCacheDataUnsafe
  , VkMergePipelineCaches
  , vkFunMergePipelineCaches
  , vkMergePipelineCaches
  , vkMergePipelineCachesUnsafe

  -- | Pipeline commands
  , VkBlendFactor
  , pattern VK_BLEND_FACTOR_ZERO
  , pattern VK_BLEND_FACTOR_ONE
  , pattern VK_BLEND_FACTOR_SRC_COLOR
  , pattern VK_BLEND_FACTOR_ONE_MINUS_SRC_COLOR
  , pattern VK_BLEND_FACTOR_DST_COLOR
  , pattern VK_BLEND_FACTOR_ONE_MINUS_DST_COLOR
  , pattern VK_BLEND_FACTOR_SRC_ALPHA
  , pattern VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
  , pattern VK_BLEND_FACTOR_DST_ALPHA
  , pattern VK_BLEND_FACTOR_ONE_MINUS_DST_ALPHA
  , pattern VK_BLEND_FACTOR_CONSTANT_COLOR
  , pattern VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR
  , pattern VK_BLEND_FACTOR_CONSTANT_ALPHA
  , pattern VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA
  , pattern VK_BLEND_FACTOR_SRC_ALPHA_SATURATE
  , pattern VK_BLEND_FACTOR_SRC1_COLOR
  , pattern VK_BLEND_FACTOR_ONE_MINUS_SRC1_COLOR
  , pattern VK_BLEND_FACTOR_SRC1_ALPHA
  , pattern VK_BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA
  , VkBlendOp
  , pattern VK_BLEND_OP_ADD
  , pattern VK_BLEND_OP_SUBTRACT
  , pattern VK_BLEND_OP_REVERSE_SUBTRACT
  , pattern VK_BLEND_OP_MIN
  , pattern VK_BLEND_OP_MAX
  , VkColorComponentFlagBits
  , pattern VK_COLOR_COMPONENT_R_BIT
  , pattern VK_COLOR_COMPONENT_G_BIT
  , pattern VK_COLOR_COMPONENT_B_BIT
  , pattern VK_COLOR_COMPONENT_A_BIT
  , VkColorComponentFlags
  , VkCompareOp
  , pattern VK_COMPARE_OP_NEVER
  , pattern VK_COMPARE_OP_LESS
  , pattern VK_COMPARE_OP_EQUAL
  , pattern VK_COMPARE_OP_LESS_OR_EQUAL
  , pattern VK_COMPARE_OP_GREATER
  , pattern VK_COMPARE_OP_NOT_EQUAL
  , pattern VK_COMPARE_OP_GREATER_OR_EQUAL
  , pattern VK_COMPARE_OP_ALWAYS
  , VkComputePipelineCreateInfo (..)
  , VkCullModeFlagBits
  , pattern VK_CULL_MODE_NONE
  , pattern VK_CULL_MODE_FRONT_BIT
  , pattern VK_CULL_MODE_BACK_BIT
  , pattern VK_CULL_MODE_FRONT_AND_BACK
  , VkCullModeFlags
  , VkDynamicState
  , pattern VK_DYNAMIC_STATE_VIEWPORT
  , pattern VK_DYNAMIC_STATE_SCISSOR
  , pattern VK_DYNAMIC_STATE_LINE_WIDTH
  , pattern VK_DYNAMIC_STATE_DEPTH_BIAS
  , pattern VK_DYNAMIC_STATE_BLEND_CONSTANTS
  , pattern VK_DYNAMIC_STATE_DEPTH_BOUNDS
  , pattern VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK
  , pattern VK_DYNAMIC_STATE_STENCIL_WRITE_MASK
  , pattern VK_DYNAMIC_STATE_STENCIL_REFERENCE
  , VkFrontFace
  , pattern VK_FRONT_FACE_COUNTER_CLOCKWISE
  , pattern VK_FRONT_FACE_CLOCKWISE
  , VkGraphicsPipelineCreateInfo (..)
  , VkLogicOp
  , pattern VK_LOGIC_OP_CLEAR
  , pattern VK_LOGIC_OP_AND
  , pattern VK_LOGIC_OP_AND_REVERSE
  , pattern VK_LOGIC_OP_COPY
  , pattern VK_LOGIC_OP_AND_INVERTED
  , pattern VK_LOGIC_OP_NO_OP
  , pattern VK_LOGIC_OP_XOR
  , pattern VK_LOGIC_OP_OR
  , pattern VK_LOGIC_OP_NOR
  , pattern VK_LOGIC_OP_EQUIVALENT
  , pattern VK_LOGIC_OP_INVERT
  , pattern VK_LOGIC_OP_OR_REVERSE
  , pattern VK_LOGIC_OP_COPY_INVERTED
  , pattern VK_LOGIC_OP_OR_INVERTED
  , pattern VK_LOGIC_OP_NAND
  , pattern VK_LOGIC_OP_SET
  , VkPipeline_T
  , VkPipeline
  , VkPipelineColorBlendAttachmentState (..)
  , VkPipelineColorBlendStateCreateFlags
  , VkPipelineColorBlendStateCreateInfo (..)
  , VkPipelineCreateFlagBits
  , pattern VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT
  , pattern VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT
  , pattern VK_PIPELINE_CREATE_DERIVATIVE_BIT
  , VkPipelineCreateFlags
  , VkPipelineDepthStencilStateCreateFlags
  , VkPipelineDepthStencilStateCreateInfo (..)
  , VkPipelineDynamicStateCreateFlags
  , VkPipelineDynamicStateCreateInfo (..)
  , VkPipelineInputAssemblyStateCreateFlags
  , VkPipelineInputAssemblyStateCreateInfo (..)
  , VkPipelineLayoutCreateFlags
  , VkPipelineMultisampleStateCreateFlags
  , VkPipelineMultisampleStateCreateInfo (..)
  , VkPipelineRasterizationStateCreateFlags
  , VkPipelineRasterizationStateCreateInfo (..)
  , VkPipelineShaderStageCreateFlagBits
  , VkPipelineShaderStageCreateFlags
  , VkPipelineShaderStageCreateInfo (..)
  , VkPipelineTessellationStateCreateFlags
  , VkPipelineTessellationStateCreateInfo (..)
  , VkPipelineVertexInputStateCreateFlags
  , VkPipelineVertexInputStateCreateInfo (..)
  , VkPipelineViewportStateCreateFlags
  , VkPipelineViewportStateCreateInfo (..)
  , VkPolygonMode
  , pattern VK_POLYGON_MODE_FILL
  , pattern VK_POLYGON_MODE_LINE
  , pattern VK_POLYGON_MODE_POINT
  , VkPrimitiveTopology
  , pattern VK_PRIMITIVE_TOPOLOGY_POINT_LIST
  , pattern VK_PRIMITIVE_TOPOLOGY_LINE_LIST
  , pattern VK_PRIMITIVE_TOPOLOGY_LINE_STRIP
  , pattern VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST
  , pattern VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP
  , pattern VK_PRIMITIVE_TOPOLOGY_TRIANGLE_FAN
  , pattern VK_PRIMITIVE_TOPOLOGY_LINE_LIST_WITH_ADJACENCY
  , pattern VK_PRIMITIVE_TOPOLOGY_LINE_STRIP_WITH_ADJACENCY
  , pattern VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST_WITH_ADJACENCY
  , pattern VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP_WITH_ADJACENCY
  , pattern VK_PRIMITIVE_TOPOLOGY_PATCH_LIST
  , VkSampleMask
  , VkShaderStageFlagBits
  , pattern VK_SHADER_STAGE_VERTEX_BIT
  , pattern VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT
  , pattern VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT
  , pattern VK_SHADER_STAGE_GEOMETRY_BIT
  , pattern VK_SHADER_STAGE_FRAGMENT_BIT
  , pattern VK_SHADER_STAGE_COMPUTE_BIT
  , pattern VK_SHADER_STAGE_ALL_GRAPHICS
  , pattern VK_SHADER_STAGE_ALL
  , VkShaderStageFlags
  , VkSpecializationInfo (..)
  , VkSpecializationMapEntry (..)
  , VkStencilOp
  , pattern VK_STENCIL_OP_KEEP
  , pattern VK_STENCIL_OP_ZERO
  , pattern VK_STENCIL_OP_REPLACE
  , pattern VK_STENCIL_OP_INCREMENT_AND_CLAMP
  , pattern VK_STENCIL_OP_DECREMENT_AND_CLAMP
  , pattern VK_STENCIL_OP_INVERT
  , pattern VK_STENCIL_OP_INCREMENT_AND_WRAP
  , pattern VK_STENCIL_OP_DECREMENT_AND_WRAP
  , VkStencilOpState (..)
  , VkVertexInputAttributeDescription (..)
  , VkVertexInputBindingDescription (..)
  , VkVertexInputRate
  , pattern VK_VERTEX_INPUT_RATE_VERTEX
  , pattern VK_VERTEX_INPUT_RATE_INSTANCE
  , VkViewport (..)
  , VkCreateGraphicsPipelines
  , vkFunCreateGraphicsPipelines
  , vkCreateGraphicsPipelines
  , vkCreateGraphicsPipelinesUnsafe
  , VkCreateComputePipelines
  , vkFunCreateComputePipelines
  , vkCreateComputePipelines
  , vkCreateComputePipelinesUnsafe
  , VkDestroyPipeline
  , vkFunDestroyPipeline
  , vkDestroyPipeline
  , vkDestroyPipelineUnsafe

  -- | Pipeline layout commands
  , VkPipelineLayout_T
  , VkPipelineLayout
  , VkPipelineLayoutCreateInfo (..)
  , VkPushConstantRange (..)
  , VkCreatePipelineLayout
  , vkFunCreatePipelineLayout
  , vkCreatePipelineLayout
  , vkCreatePipelineLayoutUnsafe
  , VkDestroyPipelineLayout
  , vkFunDestroyPipelineLayout
  , vkDestroyPipelineLayout
  , vkDestroyPipelineLayoutUnsafe

  -- | Sampler commands
  , VkBorderColor
  , pattern VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK
  , pattern VK_BORDER_COLOR_INT_TRANSPARENT_BLACK
  , pattern VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK
  , pattern VK_BORDER_COLOR_INT_OPAQUE_BLACK
  , pattern VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE
  , pattern VK_BORDER_COLOR_INT_OPAQUE_WHITE
  , VkFilter
  , pattern VK_FILTER_NEAREST
  , pattern VK_FILTER_LINEAR
  , VkSampler_T
  , VkSampler
  , VkSamplerAddressMode
  , pattern VK_SAMPLER_ADDRESS_MODE_REPEAT
  , pattern VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT
  , pattern VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE
  , pattern VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER
  , VkSamplerCreateFlagBits
  , VkSamplerCreateFlags
  , VkSamplerCreateInfo (..)
  , VkSamplerMipmapMode
  , pattern VK_SAMPLER_MIPMAP_MODE_NEAREST
  , pattern VK_SAMPLER_MIPMAP_MODE_LINEAR
  , VkCreateSampler
  , vkFunCreateSampler
  , vkCreateSampler
  , vkCreateSamplerUnsafe
  , VkDestroySampler
  , vkFunDestroySampler
  , vkDestroySampler
  , vkDestroySamplerUnsafe

  -- | Descriptor set commands
  , VkCopyDescriptorSet (..)
  , VkDescriptorBufferInfo (..)
  , VkDescriptorImageInfo (..)
  , VkDescriptorPool_T
  , VkDescriptorPool
  , VkDescriptorPoolCreateFlagBits
  , pattern VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT
  , VkDescriptorPoolCreateFlags
  , VkDescriptorPoolCreateInfo (..)
  , VkDescriptorPoolResetFlags
  , VkDescriptorPoolSize (..)
  , VkDescriptorSet_T
  , VkDescriptorSet
  , VkDescriptorSetAllocateInfo (..)
  , VkDescriptorSetLayout_T
  , VkDescriptorSetLayout
  , VkDescriptorSetLayoutBinding (..)
  , VkDescriptorSetLayoutCreateFlagBits
  , VkDescriptorSetLayoutCreateFlags
  , VkDescriptorSetLayoutCreateInfo (..)
  , VkDescriptorType
  , pattern VK_DESCRIPTOR_TYPE_SAMPLER
  , pattern VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER
  , pattern VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE
  , pattern VK_DESCRIPTOR_TYPE_STORAGE_IMAGE
  , pattern VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER
  , pattern VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER
  , pattern VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER
  , pattern VK_DESCRIPTOR_TYPE_STORAGE_BUFFER
  , pattern VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC
  , pattern VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC
  , pattern VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT
  , VkWriteDescriptorSet (..)
  , VkCreateDescriptorSetLayout
  , vkFunCreateDescriptorSetLayout
  , vkCreateDescriptorSetLayout
  , vkCreateDescriptorSetLayoutUnsafe
  , VkDestroyDescriptorSetLayout
  , vkFunDestroyDescriptorSetLayout
  , vkDestroyDescriptorSetLayout
  , vkDestroyDescriptorSetLayoutUnsafe
  , VkCreateDescriptorPool
  , vkFunCreateDescriptorPool
  , vkCreateDescriptorPool
  , vkCreateDescriptorPoolUnsafe
  , VkDestroyDescriptorPool
  , vkFunDestroyDescriptorPool
  , vkDestroyDescriptorPool
  , vkDestroyDescriptorPoolUnsafe
  , VkResetDescriptorPool
  , vkFunResetDescriptorPool
  , vkResetDescriptorPool
  , vkResetDescriptorPoolUnsafe
  , VkAllocateDescriptorSets
  , vkFunAllocateDescriptorSets
  , vkAllocateDescriptorSets
  , vkAllocateDescriptorSetsUnsafe
  , VkFreeDescriptorSets
  , vkFunFreeDescriptorSets
  , vkFreeDescriptorSets
  , vkFreeDescriptorSetsUnsafe
  , VkUpdateDescriptorSets
  , vkFunUpdateDescriptorSets
  , vkUpdateDescriptorSets
  , vkUpdateDescriptorSetsUnsafe

  -- | Pass commands
  , VkAccessFlagBits
  , pattern VK_ACCESS_INDIRECT_COMMAND_READ_BIT
  , pattern VK_ACCESS_INDEX_READ_BIT
  , pattern VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT
  , pattern VK_ACCESS_UNIFORM_READ_BIT
  , pattern VK_ACCESS_INPUT_ATTACHMENT_READ_BIT
  , pattern VK_ACCESS_SHADER_READ_BIT
  , pattern VK_ACCESS_SHADER_WRITE_BIT
  , pattern VK_ACCESS_COLOR_ATTACHMENT_READ_BIT
  , pattern VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
  , pattern VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT
  , pattern VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT
  , pattern VK_ACCESS_TRANSFER_READ_BIT
  , pattern VK_ACCESS_TRANSFER_WRITE_BIT
  , pattern VK_ACCESS_HOST_READ_BIT
  , pattern VK_ACCESS_HOST_WRITE_BIT
  , pattern VK_ACCESS_MEMORY_READ_BIT
  , pattern VK_ACCESS_MEMORY_WRITE_BIT
  , VkAccessFlags
  , VkAttachmentDescription (..)
  , VkAttachmentDescriptionFlagBits
  , pattern VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT
  , VkAttachmentDescriptionFlags
  , VkAttachmentLoadOp
  , pattern VK_ATTACHMENT_LOAD_OP_LOAD
  , pattern VK_ATTACHMENT_LOAD_OP_CLEAR
  , pattern VK_ATTACHMENT_LOAD_OP_DONT_CARE
  , VkAttachmentReference (..)
  , VkAttachmentStoreOp
  , pattern VK_ATTACHMENT_STORE_OP_STORE
  , pattern VK_ATTACHMENT_STORE_OP_DONT_CARE
  , VkDependencyFlagBits
  , pattern VK_DEPENDENCY_BY_REGION_BIT
  , VkDependencyFlags
  , VkFramebuffer_T
  , VkFramebuffer
  , VkFramebufferCreateFlagBits
  , VkFramebufferCreateFlags
  , VkFramebufferCreateInfo (..)
  , VkPipelineBindPoint
  , pattern VK_PIPELINE_BIND_POINT_GRAPHICS
  , pattern VK_PIPELINE_BIND_POINT_COMPUTE
  , VkRenderPass_T
  , VkRenderPass
  , VkRenderPassCreateFlagBits
  , VkRenderPassCreateFlags
  , VkRenderPassCreateInfo (..)
  , VkSubpassDependency (..)
  , VkSubpassDescription (..)
  , VkSubpassDescriptionFlagBits
  , VkSubpassDescriptionFlags
  , VkCreateFramebuffer
  , vkFunCreateFramebuffer
  , vkCreateFramebuffer
  , vkCreateFramebufferUnsafe
  , VkDestroyFramebuffer
  , vkFunDestroyFramebuffer
  , vkDestroyFramebuffer
  , vkDestroyFramebufferUnsafe
  , VkCreateRenderPass
  , vkFunCreateRenderPass
  , vkCreateRenderPass
  , vkCreateRenderPassUnsafe
  , VkDestroyRenderPass
  , vkFunDestroyRenderPass
  , vkDestroyRenderPass
  , vkDestroyRenderPassUnsafe
  , VkGetRenderAreaGranularity
  , vkFunGetRenderAreaGranularity
  , vkGetRenderAreaGranularity
  , vkGetRenderAreaGranularityUnsafe

  -- | Command pool commands
  , VkCommandPool_T
  , VkCommandPool
  , VkCommandPoolCreateFlagBits
  , pattern VK_COMMAND_POOL_CREATE_TRANSIENT_BIT
  , pattern VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT
  , VkCommandPoolCreateFlags
  , VkCommandPoolCreateInfo (..)
  , VkCommandPoolResetFlagBits
  , pattern VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT
  , VkCommandPoolResetFlags
  , VkCreateCommandPool
  , vkFunCreateCommandPool
  , vkCreateCommandPool
  , vkCreateCommandPoolUnsafe
  , VkDestroyCommandPool
  , vkFunDestroyCommandPool
  , vkDestroyCommandPool
  , vkDestroyCommandPoolUnsafe
  , VkResetCommandPool
  , vkFunResetCommandPool
  , vkResetCommandPool
  , vkResetCommandPoolUnsafe

  -- | Command buffer commands
  , VkCommandBuffer_T
  , VkCommandBuffer
  , VkCommandBufferAllocateInfo (..)
  , VkCommandBufferBeginInfo (..)
  , VkCommandBufferInheritanceInfo (..)
  , VkCommandBufferLevel
  , pattern VK_COMMAND_BUFFER_LEVEL_PRIMARY
  , pattern VK_COMMAND_BUFFER_LEVEL_SECONDARY
  , VkCommandBufferResetFlagBits
  , pattern VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT
  , VkCommandBufferResetFlags
  , VkCommandBufferUsageFlagBits
  , pattern VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
  , pattern VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT
  , pattern VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT
  , VkCommandBufferUsageFlags
  , VkQueryControlFlagBits
  , pattern VK_QUERY_CONTROL_PRECISE_BIT
  , VkQueryControlFlags
  , VkAllocateCommandBuffers
  , vkFunAllocateCommandBuffers
  , vkAllocateCommandBuffers
  , vkAllocateCommandBuffersUnsafe
  , VkFreeCommandBuffers
  , vkFunFreeCommandBuffers
  , vkFreeCommandBuffers
  , vkFreeCommandBuffersUnsafe
  , VkBeginCommandBuffer
  , vkFunBeginCommandBuffer
  , vkBeginCommandBuffer
  , vkBeginCommandBufferUnsafe
  , VkEndCommandBuffer
  , vkFunEndCommandBuffer
  , vkEndCommandBuffer
  , vkEndCommandBufferUnsafe
  , VkResetCommandBuffer
  , vkFunResetCommandBuffer
  , vkResetCommandBuffer
  , vkResetCommandBufferUnsafe

  -- | Command buffer building commands
  , VkBufferCopy (..)
  , VkBufferImageCopy (..)
  , VkClearAttachment (..)
  , VkClearColorValue (..)
  , VkClearDepthStencilValue (..)
  , VkClearRect (..)
  , VkClearValue (..)
  , VkImageBlit (..)
  , VkImageCopy (..)
  , VkImageResolve (..)
  , VkImageSubresourceLayers (..)
  , VkIndexType
  , pattern VK_INDEX_TYPE_UINT16
  , pattern VK_INDEX_TYPE_UINT32
  , VkRenderPassBeginInfo (..)
  , VkStencilFaceFlagBits
  , pattern VK_STENCIL_FACE_FRONT_BIT
  , pattern VK_STENCIL_FACE_BACK_BIT
  , pattern VK_STENCIL_FACE_FRONT_AND_BACK
  , pattern VK_STENCIL_FRONT_AND_BACK
  , VkStencilFaceFlags
  , VkSubpassContents
  , pattern VK_SUBPASS_CONTENTS_INLINE
  , pattern VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS
  , VkCmdBindPipeline
  , vkFunCmdBindPipeline
  , vkCmdBindPipeline
  , vkCmdBindPipelineUnsafe
  , VkCmdSetViewport
  , vkFunCmdSetViewport
  , vkCmdSetViewport
  , vkCmdSetViewportUnsafe
  , VkCmdSetScissor
  , vkFunCmdSetScissor
  , vkCmdSetScissor
  , vkCmdSetScissorUnsafe
  , VkCmdSetLineWidth
  , vkFunCmdSetLineWidth
  , vkCmdSetLineWidth
  , vkCmdSetLineWidthUnsafe
  , VkCmdSetDepthBias
  , vkFunCmdSetDepthBias
  , vkCmdSetDepthBias
  , vkCmdSetDepthBiasUnsafe
  , VkCmdSetBlendConstants
  , vkFunCmdSetBlendConstants
  , VkCmdSetDepthBounds
  , vkFunCmdSetDepthBounds
  , vkCmdSetDepthBounds
  , vkCmdSetDepthBoundsUnsafe
  , VkCmdSetStencilCompareMask
  , vkFunCmdSetStencilCompareMask
  , vkCmdSetStencilCompareMask
  , vkCmdSetStencilCompareMaskUnsafe
  , VkCmdSetStencilWriteMask
  , vkFunCmdSetStencilWriteMask
  , vkCmdSetStencilWriteMask
  , vkCmdSetStencilWriteMaskUnsafe
  , VkCmdSetStencilReference
  , vkFunCmdSetStencilReference
  , vkCmdSetStencilReference
  , vkCmdSetStencilReferenceUnsafe
  , VkCmdBindDescriptorSets
  , vkFunCmdBindDescriptorSets
  , vkCmdBindDescriptorSets
  , vkCmdBindDescriptorSetsUnsafe
  , VkCmdBindIndexBuffer
  , vkFunCmdBindIndexBuffer
  , vkCmdBindIndexBuffer
  , vkCmdBindIndexBufferUnsafe
  , VkCmdBindVertexBuffers
  , vkFunCmdBindVertexBuffers
  , vkCmdBindVertexBuffers
  , vkCmdBindVertexBuffersUnsafe
  , VkCmdDraw
  , vkFunCmdDraw
  , vkCmdDraw
  , vkCmdDrawUnsafe
  , VkCmdDrawIndexed
  , vkFunCmdDrawIndexed
  , vkCmdDrawIndexed
  , vkCmdDrawIndexedUnsafe
  , VkCmdDrawIndirect
  , vkFunCmdDrawIndirect
  , vkCmdDrawIndirect
  , vkCmdDrawIndirectUnsafe
  , VkCmdDrawIndexedIndirect
  , vkFunCmdDrawIndexedIndirect
  , vkCmdDrawIndexedIndirect
  , vkCmdDrawIndexedIndirectUnsafe
  , VkCmdDispatch
  , vkFunCmdDispatch
  , vkCmdDispatch
  , vkCmdDispatchUnsafe
  , VkCmdDispatchIndirect
  , vkFunCmdDispatchIndirect
  , vkCmdDispatchIndirect
  , vkCmdDispatchIndirectUnsafe
  , VkCmdCopyBuffer
  , vkFunCmdCopyBuffer
  , vkCmdCopyBuffer
  , vkCmdCopyBufferUnsafe
  , VkCmdCopyImage
  , vkFunCmdCopyImage
  , vkCmdCopyImage
  , vkCmdCopyImageUnsafe
  , VkCmdBlitImage
  , vkFunCmdBlitImage
  , vkCmdBlitImage
  , vkCmdBlitImageUnsafe
  , VkCmdCopyBufferToImage
  , vkFunCmdCopyBufferToImage
  , vkCmdCopyBufferToImage
  , vkCmdCopyBufferToImageUnsafe
  , VkCmdCopyImageToBuffer
  , vkFunCmdCopyImageToBuffer
  , vkCmdCopyImageToBuffer
  , vkCmdCopyImageToBufferUnsafe
  , VkCmdUpdateBuffer
  , vkFunCmdUpdateBuffer
  , vkCmdUpdateBuffer
  , vkCmdUpdateBufferUnsafe
  , VkCmdFillBuffer
  , vkFunCmdFillBuffer
  , vkCmdFillBuffer
  , vkCmdFillBufferUnsafe
  , VkCmdClearColorImage
  , vkFunCmdClearColorImage
  , vkCmdClearColorImage
  , vkCmdClearColorImageUnsafe
  , VkCmdClearDepthStencilImage
  , vkFunCmdClearDepthStencilImage
  , vkCmdClearDepthStencilImage
  , vkCmdClearDepthStencilImageUnsafe
  , VkCmdClearAttachments
  , vkFunCmdClearAttachments
  , vkCmdClearAttachments
  , vkCmdClearAttachmentsUnsafe
  , VkCmdResolveImage
  , vkFunCmdResolveImage
  , vkCmdResolveImage
  , vkCmdResolveImageUnsafe
  , VkCmdSetEvent
  , vkFunCmdSetEvent
  , vkCmdSetEvent
  , vkCmdSetEventUnsafe
  , VkCmdResetEvent
  , vkFunCmdResetEvent
  , vkCmdResetEvent
  , vkCmdResetEventUnsafe
  , VkCmdWaitEvents
  , vkFunCmdWaitEvents
  , vkCmdWaitEvents
  , vkCmdWaitEventsUnsafe
  , VkCmdPipelineBarrier
  , vkFunCmdPipelineBarrier
  , vkCmdPipelineBarrier
  , vkCmdPipelineBarrierUnsafe
  , VkCmdBeginQuery
  , vkFunCmdBeginQuery
  , vkCmdBeginQuery
  , vkCmdBeginQueryUnsafe
  , VkCmdEndQuery
  , vkFunCmdEndQuery
  , vkCmdEndQuery
  , vkCmdEndQueryUnsafe
  , VkCmdResetQueryPool
  , vkFunCmdResetQueryPool
  , vkCmdResetQueryPool
  , vkCmdResetQueryPoolUnsafe
  , VkCmdWriteTimestamp
  , vkFunCmdWriteTimestamp
  , vkCmdWriteTimestamp
  , vkCmdWriteTimestampUnsafe
  , VkCmdCopyQueryPoolResults
  , vkFunCmdCopyQueryPoolResults
  , vkCmdCopyQueryPoolResults
  , vkCmdCopyQueryPoolResultsUnsafe
  , VkCmdPushConstants
  , vkFunCmdPushConstants
  , vkCmdPushConstants
  , vkCmdPushConstantsUnsafe
  , VkCmdBeginRenderPass
  , vkFunCmdBeginRenderPass
  , vkCmdBeginRenderPass
  , vkCmdBeginRenderPassUnsafe
  , VkCmdNextSubpass
  , vkFunCmdNextSubpass
  , vkCmdNextSubpass
  , vkCmdNextSubpassUnsafe
  , VkCmdEndRenderPass
  , vkFunCmdEndRenderPass
  , vkCmdEndRenderPass
  , vkCmdEndRenderPassUnsafe
  , VkCmdExecuteCommands
  , vkFunCmdExecuteCommands
  , vkCmdExecuteCommands
  , vkCmdExecuteCommandsUnsafe
  ) where

import Vulkan.Types.Define
import Vulkan.Types.Base
import Vulkan.Types.Constant
import Vulkan.Types.Enum.VkAccessFlagBits
import Vulkan.Types.Enum.VkAccessFlags
import Vulkan.Types.Enum.VkAttachmentDescriptionFlagBits
import Vulkan.Types.Enum.VkAttachmentDescriptionFlags
import Vulkan.Types.Enum.VkAttachmentLoadOp
import Vulkan.Types.Enum.VkAttachmentStoreOp
import Vulkan.Types.Enum.VkBlendFactor
import Vulkan.Types.Enum.VkBlendOp
import Vulkan.Types.Enum.VkBorderColor
import Vulkan.Types.Enum.VkBufferCreateFlagBits
import Vulkan.Types.Enum.VkBufferCreateFlags
import Vulkan.Types.Enum.VkBufferUsageFlagBits
import Vulkan.Types.Enum.VkBufferUsageFlags
import Vulkan.Types.Enum.VkBufferViewCreateFlags
import Vulkan.Types.Enum.VkColorComponentFlagBits
import Vulkan.Types.Enum.VkColorComponentFlags
import Vulkan.Types.Enum.VkCommandBufferLevel
import Vulkan.Types.Enum.VkCommandBufferResetFlagBits
import Vulkan.Types.Enum.VkCommandBufferResetFlags
import Vulkan.Types.Enum.VkCommandBufferUsageFlagBits
import Vulkan.Types.Enum.VkCommandBufferUsageFlags
import Vulkan.Types.Enum.VkCommandPoolCreateFlagBits
import Vulkan.Types.Enum.VkCommandPoolCreateFlags
import Vulkan.Types.Enum.VkCommandPoolResetFlagBits
import Vulkan.Types.Enum.VkCommandPoolResetFlags
import Vulkan.Types.Enum.VkCompareOp
import Vulkan.Types.Enum.VkComponentSwizzle
import Vulkan.Types.Enum.VkCullModeFlagBits
import Vulkan.Types.Enum.VkCullModeFlags
import Vulkan.Types.Enum.VkDependencyFlagBits
import Vulkan.Types.Enum.VkDependencyFlags
import Vulkan.Types.Enum.VkDescriptorPoolCreateFlagBits
import Vulkan.Types.Enum.VkDescriptorPoolCreateFlags
import Vulkan.Types.Enum.VkDescriptorPoolResetFlags
import Vulkan.Types.Enum.VkDescriptorSetLayoutCreateFlagBits
import Vulkan.Types.Enum.VkDescriptorSetLayoutCreateFlags
import Vulkan.Types.Enum.VkDescriptorType
import Vulkan.Types.Enum.VkDeviceCreateFlags
import Vulkan.Types.Enum.VkDeviceQueueCreateFlags
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkEventCreateFlagBits
import Vulkan.Types.Enum.VkEventCreateFlags
import Vulkan.Types.Enum.VkFenceCreateFlagBits
import Vulkan.Types.Enum.VkFenceCreateFlags
import Vulkan.Types.Enum.VkFilter
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkFormatFeatureFlagBits
import Vulkan.Types.Enum.VkFormatFeatureFlags
import Vulkan.Types.Enum.VkFramebufferCreateFlagBits
import Vulkan.Types.Enum.VkFramebufferCreateFlags
import Vulkan.Types.Enum.VkFrontFace
import Vulkan.Types.Enum.VkImageAspectFlagBits
import Vulkan.Types.Enum.VkImageAspectFlags
import Vulkan.Types.Enum.VkImageCreateFlagBits
import Vulkan.Types.Enum.VkImageCreateFlags
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkImageTiling
import Vulkan.Types.Enum.VkImageType
import Vulkan.Types.Enum.VkImageUsageFlagBits
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkImageViewCreateFlagBits
import Vulkan.Types.Enum.VkImageViewCreateFlags
import Vulkan.Types.Enum.VkImageViewType
import Vulkan.Types.Enum.VkIndexType
import Vulkan.Types.Enum.VkInstanceCreateFlagBits
import Vulkan.Types.Enum.VkInstanceCreateFlags
import Vulkan.Types.Enum.VkInternalAllocationType
import Vulkan.Types.Enum.VkLogicOp
import Vulkan.Types.Enum.VkMemoryHeapFlagBits
import Vulkan.Types.Enum.VkMemoryHeapFlags
import Vulkan.Types.Enum.VkMemoryMapFlags
import Vulkan.Types.Enum.VkMemoryPropertyFlagBits
import Vulkan.Types.Enum.VkMemoryPropertyFlags
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkPhysicalDeviceType
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Enum.VkPipelineCacheCreateFlags
import Vulkan.Types.Enum.VkPipelineCacheHeaderVersion
import Vulkan.Types.Enum.VkPipelineColorBlendStateCreateFlags
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkPipelineCreateFlags
import Vulkan.Types.Enum.VkPipelineDepthStencilStateCreateFlags
import Vulkan.Types.Enum.VkPipelineDynamicStateCreateFlags
import Vulkan.Types.Enum.VkPipelineInputAssemblyStateCreateFlags
import Vulkan.Types.Enum.VkPipelineLayoutCreateFlags
import Vulkan.Types.Enum.VkPipelineMultisampleStateCreateFlags
import Vulkan.Types.Enum.VkPipelineRasterizationStateCreateFlags
import Vulkan.Types.Enum.VkPipelineShaderStageCreateFlagBits
import Vulkan.Types.Enum.VkPipelineShaderStageCreateFlags
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkPipelineStageFlags
import Vulkan.Types.Enum.VkPipelineTessellationStateCreateFlags
import Vulkan.Types.Enum.VkPipelineVertexInputStateCreateFlags
import Vulkan.Types.Enum.VkPipelineViewportStateCreateFlags
import Vulkan.Types.Enum.VkPolygonMode
import Vulkan.Types.Enum.VkPrimitiveTopology
import Vulkan.Types.Enum.VkQueryControlFlagBits
import Vulkan.Types.Enum.VkQueryControlFlags
import Vulkan.Types.Enum.VkQueryPipelineStatisticFlagBits
import Vulkan.Types.Enum.VkQueryPipelineStatisticFlags
import Vulkan.Types.Enum.VkQueryPoolCreateFlags
import Vulkan.Types.Enum.VkQueryResultFlagBits
import Vulkan.Types.Enum.VkQueryResultFlags
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkQueueFlagBits
import Vulkan.Types.Enum.VkQueueFlags
import Vulkan.Types.Enum.VkRenderPassCreateFlagBits
import Vulkan.Types.Enum.VkRenderPassCreateFlags
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkSampleCountFlags
import Vulkan.Types.Enum.VkSamplerAddressMode
import Vulkan.Types.Enum.VkSamplerCreateFlagBits
import Vulkan.Types.Enum.VkSamplerCreateFlags
import Vulkan.Types.Enum.VkSamplerMipmapMode
import Vulkan.Types.Enum.VkSemaphoreCreateFlags
import Vulkan.Types.Enum.VkShaderModuleCreateFlags
import Vulkan.Types.Enum.VkShaderStageFlagBits
import Vulkan.Types.Enum.VkShaderStageFlags
import Vulkan.Types.Enum.VkSharingMode
import Vulkan.Types.Enum.VkSparseImageFormatFlagBits
import Vulkan.Types.Enum.VkSparseImageFormatFlags
import Vulkan.Types.Enum.VkSparseMemoryBindFlagBits
import Vulkan.Types.Enum.VkSparseMemoryBindFlags
import Vulkan.Types.Enum.VkStencilFaceFlagBits
import Vulkan.Types.Enum.VkStencilFaceFlags
import Vulkan.Types.Enum.VkStencilOp
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSubpassContents
import Vulkan.Types.Enum.VkSubpassDescriptionFlagBits
import Vulkan.Types.Enum.VkSubpassDescriptionFlags
import Vulkan.Types.Enum.VkSystemAllocationScope
import Vulkan.Types.Enum.VkVendorId
import Vulkan.Types.Enum.VkVertexInputRate
import Vulkan.Types.FuncPointer
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkApplicationInfo
import Vulkan.Types.Struct.VkAttachmentDescription
import Vulkan.Types.Struct.VkAttachmentReference
import Vulkan.Types.Struct.VkBaseInStructure
import Vulkan.Types.Struct.VkBaseOutStructure
import Vulkan.Types.Struct.VkBindSparseInfo
import Vulkan.Types.Struct.VkBufferCopy
import Vulkan.Types.Struct.VkBufferCreateInfo
import Vulkan.Types.Struct.VkBufferImageCopy
import Vulkan.Types.Struct.VkBufferMemoryBarrier
import Vulkan.Types.Struct.VkBufferViewCreateInfo
import Vulkan.Types.Struct.VkClearAttachment
import Vulkan.Types.Struct.VkClearDepthStencilValue
import Vulkan.Types.Struct.VkClearRect
import Vulkan.Types.Struct.VkCommandBufferAllocateInfo
import Vulkan.Types.Struct.VkCommandBufferBeginInfo
import Vulkan.Types.Struct.VkCommandBufferInheritanceInfo
import Vulkan.Types.Struct.VkCommandPoolCreateInfo
import Vulkan.Types.Struct.VkComponentMapping
import Vulkan.Types.Struct.VkComputePipelineCreateInfo
import Vulkan.Types.Struct.VkCopyDescriptorSet
import Vulkan.Types.Struct.VkDescriptorBufferInfo
import Vulkan.Types.Struct.VkDescriptorImageInfo
import Vulkan.Types.Struct.VkDescriptorPoolCreateInfo
import Vulkan.Types.Struct.VkDescriptorPoolSize
import Vulkan.Types.Struct.VkDescriptorSetAllocateInfo
import Vulkan.Types.Struct.VkDescriptorSetLayoutBinding
import Vulkan.Types.Struct.VkDescriptorSetLayoutCreateInfo
import Vulkan.Types.Struct.VkDeviceCreateInfo
import Vulkan.Types.Struct.VkDeviceQueueCreateInfo
import Vulkan.Types.Struct.VkDispatchIndirectCommand
import Vulkan.Types.Struct.VkDrawIndexedIndirectCommand
import Vulkan.Types.Struct.VkDrawIndirectCommand
import Vulkan.Types.Struct.VkEventCreateInfo
import Vulkan.Types.Struct.VkExtensionProperties
import Vulkan.Types.Struct.VkExtent2D
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkFenceCreateInfo
import Vulkan.Types.Struct.VkFormatProperties
import Vulkan.Types.Struct.VkFramebufferCreateInfo
import Vulkan.Types.Struct.VkGraphicsPipelineCreateInfo
import Vulkan.Types.Struct.VkImageBlit
import Vulkan.Types.Struct.VkImageCopy
import Vulkan.Types.Struct.VkImageCreateInfo
import Vulkan.Types.Struct.VkImageFormatProperties
import Vulkan.Types.Struct.VkImageMemoryBarrier
import Vulkan.Types.Struct.VkImageResolve
import Vulkan.Types.Struct.VkImageSubresource
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkImageSubresourceRange
import Vulkan.Types.Struct.VkImageViewCreateInfo
import Vulkan.Types.Struct.VkInstanceCreateInfo
import Vulkan.Types.Struct.VkLayerProperties
import Vulkan.Types.Struct.VkMappedMemoryRange
import Vulkan.Types.Struct.VkMemoryAllocateInfo
import Vulkan.Types.Struct.VkMemoryBarrier
import Vulkan.Types.Struct.VkMemoryHeap
import Vulkan.Types.Struct.VkMemoryRequirements
import Vulkan.Types.Struct.VkMemoryType
import Vulkan.Types.Struct.VkOffset2D
import Vulkan.Types.Struct.VkOffset3D
import Vulkan.Types.Struct.VkPhysicalDeviceFeatures
import Vulkan.Types.Struct.VkPhysicalDeviceLimits
import Vulkan.Types.Struct.VkPhysicalDeviceMemoryProperties
import Vulkan.Types.Struct.VkPhysicalDeviceProperties
import Vulkan.Types.Struct.VkPhysicalDeviceSparseProperties
import Vulkan.Types.Struct.VkPipelineCacheCreateInfo
import Vulkan.Types.Struct.VkPipelineCacheHeaderVersionOne
import Vulkan.Types.Struct.VkPipelineColorBlendAttachmentState
import Vulkan.Types.Struct.VkPipelineColorBlendStateCreateInfo
import Vulkan.Types.Struct.VkPipelineDepthStencilStateCreateInfo
import Vulkan.Types.Struct.VkPipelineDynamicStateCreateInfo
import Vulkan.Types.Struct.VkPipelineInputAssemblyStateCreateInfo
import Vulkan.Types.Struct.VkPipelineLayoutCreateInfo
import Vulkan.Types.Struct.VkPipelineMultisampleStateCreateInfo
import Vulkan.Types.Struct.VkPipelineRasterizationStateCreateInfo
import Vulkan.Types.Struct.VkPipelineShaderStageCreateInfo
import Vulkan.Types.Struct.VkPipelineTessellationStateCreateInfo
import Vulkan.Types.Struct.VkPipelineVertexInputStateCreateInfo
import Vulkan.Types.Struct.VkPipelineViewportStateCreateInfo
import Vulkan.Types.Struct.VkPushConstantRange
import Vulkan.Types.Struct.VkQueryPoolCreateInfo
import Vulkan.Types.Struct.VkQueueFamilyProperties
import Vulkan.Types.Struct.VkRect2D
import Vulkan.Types.Struct.VkRenderPassBeginInfo
import Vulkan.Types.Struct.VkRenderPassCreateInfo
import Vulkan.Types.Struct.VkSamplerCreateInfo
import Vulkan.Types.Struct.VkSemaphoreCreateInfo
import Vulkan.Types.Struct.VkShaderModuleCreateInfo
import Vulkan.Types.Struct.VkSparseBufferMemoryBindInfo
import Vulkan.Types.Struct.VkSparseImageFormatProperties
import Vulkan.Types.Struct.VkSparseImageMemoryBind
import Vulkan.Types.Struct.VkSparseImageMemoryBindInfo
import Vulkan.Types.Struct.VkSparseImageMemoryRequirements
import Vulkan.Types.Struct.VkSparseImageOpaqueMemoryBindInfo
import Vulkan.Types.Struct.VkSparseMemoryBind
import Vulkan.Types.Struct.VkSpecializationInfo
import Vulkan.Types.Struct.VkSpecializationMapEntry
import Vulkan.Types.Struct.VkStencilOpState
import Vulkan.Types.Struct.VkSubmitInfo
import Vulkan.Types.Struct.VkSubpassDependency
import Vulkan.Types.Struct.VkSubpassDescription
import Vulkan.Types.Struct.VkSubresourceLayout
import Vulkan.Types.Struct.VkVertexInputAttributeDescription
import Vulkan.Types.Struct.VkVertexInputBindingDescription
import Vulkan.Types.Struct.VkViewport
import Vulkan.Types.Struct.VkWriteDescriptorSet
import Vulkan.Types.Union.VkClearColorValue
import Vulkan.Types.Union.VkClearValue
import Vulkan.Types.Command.VkAllocateCommandBuffers
import Vulkan.Types.Command.VkAllocateDescriptorSets
import Vulkan.Types.Command.VkAllocateMemory
import Vulkan.Types.Command.VkBeginCommandBuffer
import Vulkan.Types.Command.VkBindBufferMemory
import Vulkan.Types.Command.VkBindImageMemory
import Vulkan.Types.Command.VkCmdBeginQuery
import Vulkan.Types.Command.VkCmdBeginRenderPass
import Vulkan.Types.Command.VkCmdBindDescriptorSets
import Vulkan.Types.Command.VkCmdBindIndexBuffer
import Vulkan.Types.Command.VkCmdBindPipeline
import Vulkan.Types.Command.VkCmdBindVertexBuffers
import Vulkan.Types.Command.VkCmdBlitImage
import Vulkan.Types.Command.VkCmdClearAttachments
import Vulkan.Types.Command.VkCmdClearColorImage
import Vulkan.Types.Command.VkCmdClearDepthStencilImage
import Vulkan.Types.Command.VkCmdCopyBuffer
import Vulkan.Types.Command.VkCmdCopyBufferToImage
import Vulkan.Types.Command.VkCmdCopyImage
import Vulkan.Types.Command.VkCmdCopyImageToBuffer
import Vulkan.Types.Command.VkCmdCopyQueryPoolResults
import Vulkan.Types.Command.VkCmdDispatch
import Vulkan.Types.Command.VkCmdDispatchIndirect
import Vulkan.Types.Command.VkCmdDraw
import Vulkan.Types.Command.VkCmdDrawIndexed
import Vulkan.Types.Command.VkCmdDrawIndexedIndirect
import Vulkan.Types.Command.VkCmdDrawIndirect
import Vulkan.Types.Command.VkCmdEndQuery
import Vulkan.Types.Command.VkCmdEndRenderPass
import Vulkan.Types.Command.VkCmdExecuteCommands
import Vulkan.Types.Command.VkCmdFillBuffer
import Vulkan.Types.Command.VkCmdNextSubpass
import Vulkan.Types.Command.VkCmdPipelineBarrier
import Vulkan.Types.Command.VkCmdPushConstants
import Vulkan.Types.Command.VkCmdResetEvent
import Vulkan.Types.Command.VkCmdResetQueryPool
import Vulkan.Types.Command.VkCmdResolveImage
import Vulkan.Types.Command.VkCmdSetBlendConstants
import Vulkan.Types.Command.VkCmdSetDepthBias
import Vulkan.Types.Command.VkCmdSetDepthBounds
import Vulkan.Types.Command.VkCmdSetEvent
import Vulkan.Types.Command.VkCmdSetLineWidth
import Vulkan.Types.Command.VkCmdSetScissor
import Vulkan.Types.Command.VkCmdSetStencilCompareMask
import Vulkan.Types.Command.VkCmdSetStencilReference
import Vulkan.Types.Command.VkCmdSetStencilWriteMask
import Vulkan.Types.Command.VkCmdSetViewport
import Vulkan.Types.Command.VkCmdUpdateBuffer
import Vulkan.Types.Command.VkCmdWaitEvents
import Vulkan.Types.Command.VkCmdWriteTimestamp
import Vulkan.Types.Command.VkCreateBuffer
import Vulkan.Types.Command.VkCreateBufferView
import Vulkan.Types.Command.VkCreateCommandPool
import Vulkan.Types.Command.VkCreateComputePipelines
import Vulkan.Types.Command.VkCreateDescriptorPool
import Vulkan.Types.Command.VkCreateDescriptorSetLayout
import Vulkan.Types.Command.VkCreateDevice
import Vulkan.Types.Command.VkCreateEvent
import Vulkan.Types.Command.VkCreateFence
import Vulkan.Types.Command.VkCreateFramebuffer
import Vulkan.Types.Command.VkCreateGraphicsPipelines
import Vulkan.Types.Command.VkCreateImage
import Vulkan.Types.Command.VkCreateImageView
import Vulkan.Types.Command.VkCreateInstance
import Vulkan.Types.Command.VkCreatePipelineCache
import Vulkan.Types.Command.VkCreatePipelineLayout
import Vulkan.Types.Command.VkCreateQueryPool
import Vulkan.Types.Command.VkCreateRenderPass
import Vulkan.Types.Command.VkCreateSampler
import Vulkan.Types.Command.VkCreateSemaphore
import Vulkan.Types.Command.VkCreateShaderModule
import Vulkan.Types.Command.VkDestroyBuffer
import Vulkan.Types.Command.VkDestroyBufferView
import Vulkan.Types.Command.VkDestroyCommandPool
import Vulkan.Types.Command.VkDestroyDescriptorPool
import Vulkan.Types.Command.VkDestroyDescriptorSetLayout
import Vulkan.Types.Command.VkDestroyDevice
import Vulkan.Types.Command.VkDestroyEvent
import Vulkan.Types.Command.VkDestroyFence
import Vulkan.Types.Command.VkDestroyFramebuffer
import Vulkan.Types.Command.VkDestroyImage
import Vulkan.Types.Command.VkDestroyImageView
import Vulkan.Types.Command.VkDestroyInstance
import Vulkan.Types.Command.VkDestroyPipeline
import Vulkan.Types.Command.VkDestroyPipelineCache
import Vulkan.Types.Command.VkDestroyPipelineLayout
import Vulkan.Types.Command.VkDestroyQueryPool
import Vulkan.Types.Command.VkDestroyRenderPass
import Vulkan.Types.Command.VkDestroySampler
import Vulkan.Types.Command.VkDestroySemaphore
import Vulkan.Types.Command.VkDestroyShaderModule
import Vulkan.Types.Command.VkDeviceWaitIdle
import Vulkan.Types.Command.VkEndCommandBuffer
import Vulkan.Types.Command.VkEnumerateDeviceExtensionProperties
import Vulkan.Types.Command.VkEnumerateDeviceLayerProperties
import Vulkan.Types.Command.VkEnumerateInstanceExtensionProperties
import Vulkan.Types.Command.VkEnumerateInstanceLayerProperties
import Vulkan.Types.Command.VkEnumeratePhysicalDevices
import Vulkan.Types.Command.VkFlushMappedMemoryRanges
import Vulkan.Types.Command.VkFreeCommandBuffers
import Vulkan.Types.Command.VkFreeDescriptorSets
import Vulkan.Types.Command.VkFreeMemory
import Vulkan.Types.Command.VkGetBufferMemoryRequirements
import Vulkan.Types.Command.VkGetDeviceMemoryCommitment
import Vulkan.Types.Command.VkGetDeviceProcAddr
import Vulkan.Types.Command.VkGetDeviceQueue
import Vulkan.Types.Command.VkGetEventStatus
import Vulkan.Types.Command.VkGetFenceStatus
import Vulkan.Types.Command.VkGetImageMemoryRequirements
import Vulkan.Types.Command.VkGetImageSparseMemoryRequirements
import Vulkan.Types.Command.VkGetImageSubresourceLayout
import Vulkan.Types.Command.VkGetInstanceProcAddr
import Vulkan.Types.Command.VkGetPhysicalDeviceFeatures
import Vulkan.Types.Command.VkGetPhysicalDeviceFormatProperties
import Vulkan.Types.Command.VkGetPhysicalDeviceImageFormatProperties
import Vulkan.Types.Command.VkGetPhysicalDeviceMemoryProperties
import Vulkan.Types.Command.VkGetPhysicalDeviceProperties
import Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyProperties
import Vulkan.Types.Command.VkGetPhysicalDeviceSparseImageFormatProperties
import Vulkan.Types.Command.VkGetPipelineCacheData
import Vulkan.Types.Command.VkGetQueryPoolResults
import Vulkan.Types.Command.VkGetRenderAreaGranularity
import Vulkan.Types.Command.VkInvalidateMappedMemoryRanges
import Vulkan.Types.Command.VkMapMemory
import Vulkan.Types.Command.VkMergePipelineCaches
import Vulkan.Types.Command.VkQueueBindSparse
import Vulkan.Types.Command.VkQueueSubmit
import Vulkan.Types.Command.VkQueueWaitIdle
import Vulkan.Types.Command.VkResetCommandBuffer
import Vulkan.Types.Command.VkResetCommandPool
import Vulkan.Types.Command.VkResetDescriptorPool
import Vulkan.Types.Command.VkResetEvent
import Vulkan.Types.Command.VkResetFences
import Vulkan.Types.Command.VkSetEvent
import Vulkan.Types.Command.VkUnmapMemory
import Vulkan.Types.Command.VkUpdateDescriptorSets
import Vulkan.Types.Command.VkWaitForFences
import Vulkan.Types.Command.VkGetDeviceFunPtr
import Vulkan.Types.Command.VkGetInstanceFunPtr
import Vulkan.Types.VkFun





#else

module Vulkan.Core_1_0 where

#endif