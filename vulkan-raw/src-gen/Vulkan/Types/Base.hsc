{-# LANGUAGE EmptyDataDecls #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Base where

import Data.Word
import Foreign.Ptr



#if VK_ANDROID_external_memory_android_hardware_buffer
data {-# CTYPE "vulkan/vulkan.h" "AHardwareBuffer" #-} AHardwareBuffer
#endif

#if VK_KHR_android_surface
data {-# CTYPE "vulkan/vulkan.h" "ANativeWindow" #-} ANativeWindow
#endif

#if VK_EXT_metal_surface
type CAMetalLayer = ()
#endif

#if VK_EXT_metal_objects
type IOSurfaceRef = Ptr __IOSurface
#endif

#if VK_EXT_metal_objects
type MTLBuffer_id = Ptr ()
#endif

#if VK_EXT_metal_objects
type MTLCommandQueue_id = Ptr ()
#endif

#if VK_EXT_metal_objects
type MTLDevice_id = Ptr ()
#endif

#if VK_EXT_metal_objects
type MTLSharedEvent_id = Ptr ()
#endif

#if VK_EXT_metal_objects
type MTLTexture_id = Ptr ()
#endif

type VkBool32 = #{type VkBool32}

type VkDeviceAddress = #{type VkDeviceAddress}

type VkDeviceSize = #{type VkDeviceSize}

type VkFlags = #{type VkFlags}

#if VK_VERSION_1_3 || (VK_KHR_synchronization2)
type VkFlags64 = #{type VkFlags64}
#endif

#if VK_NV_external_memory_rdma
type VkRemoteAddressNV = Ptr ()
#endif

type VkSampleMask = #{type VkSampleMask}

#if VK_EXT_metal_objects
data {-# CTYPE "vulkan/vulkan.h" "__IOSurface" #-} __IOSurface
#endif