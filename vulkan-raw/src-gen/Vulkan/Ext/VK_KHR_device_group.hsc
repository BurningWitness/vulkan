{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group

module Vulkan.Ext.VK_KHR_device_group
  ( pattern VK_KHR_DEVICE_GROUP_SPEC_VERSION
  , pattern VK_KHR_DEVICE_GROUP_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO_KHR
  , VkPeerMemoryFeatureFlagsKHR
  , VkPeerMemoryFeatureFlagBitsKHR
  , pattern VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT_KHR
  , pattern VK_PEER_MEMORY_FEATURE_COPY_DST_BIT_KHR
  , pattern VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT_KHR
  , pattern VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT_KHR
  , VkMemoryAllocateFlagsKHR
  , VkMemoryAllocateFlagBitsKHR
  , pattern VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT_KHR
  , VkMemoryAllocateFlagsInfoKHR
  , VkDeviceGroupRenderPassBeginInfoKHR
  , VkDeviceGroupCommandBufferBeginInfoKHR
  , VkDeviceGroupSubmitInfoKHR
  , VkDeviceGroupBindSparseInfoKHR
  , VkGetDeviceGroupPeerMemoryFeaturesKHR
  , vkFunGetDeviceGroupPeerMemoryFeaturesKHR
  , VkCmdSetDeviceMaskKHR
  , vkFunCmdSetDeviceMaskKHR
  , VkCmdDispatchBaseKHR
  , vkFunCmdDispatchBaseKHR
  , pattern VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHR
  , pattern VK_PIPELINE_CREATE_DISPATCH_BASE_KHR
  , pattern VK_DEPENDENCY_DEVICE_GROUP_BIT_KHR
#if VK_KHR_bind_memory2
  , pattern VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO_KHR
  , VkBindBufferMemoryDeviceGroupInfoKHR
  , VkBindImageMemoryDeviceGroupInfoKHR
  , pattern VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR
#endif
#if VK_KHR_surface
  , pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR
  , VkDeviceGroupPresentModeFlagBitsKHR
  , pattern VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR
  , pattern VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR
  , pattern VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR
  , pattern VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR
  , VkDeviceGroupPresentModeFlagsKHR
  , VkDeviceGroupPresentCapabilitiesKHR (..)
  , VkGetDeviceGroupPresentCapabilitiesKHR
  , vkFunGetDeviceGroupPresentCapabilitiesKHR
  , VkGetDeviceGroupSurfacePresentModesKHR
  , vkFunGetDeviceGroupSurfacePresentModesKHR
  , VkGetPhysicalDevicePresentRectanglesKHR
  , vkFunGetPhysicalDevicePresentRectanglesKHR
#endif
#if VK_KHR_swapchain
  , pattern VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR
  , pattern VK_SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR
  , VkImageSwapchainCreateInfoKHR (..)
  , VkBindImageMemorySwapchainInfoKHR (..)
  , VkAcquireNextImageInfoKHR (..)
  , VkDeviceGroupPresentInfoKHR (..)
  , VkDeviceGroupSwapchainCreateInfoKHR (..)
  , VkAcquireNextImage2KHR
  , vkFunAcquireNextImage2KHR
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDependencyFlagBits
import Vulkan.Types.Enum.VkDeviceGroupPresentModeFlagBitsKHR
import Vulkan.Types.Enum.VkDeviceGroupPresentModeFlagsKHR
import Vulkan.Types.Enum.VkImageCreateFlagBits
import Vulkan.Types.Enum.VkMemoryAllocateFlagBits
import Vulkan.Types.Enum.VkMemoryAllocateFlagBitsKHR
import Vulkan.Types.Enum.VkMemoryAllocateFlagsKHR
import Vulkan.Types.Enum.VkPeerMemoryFeatureFlagBits
import Vulkan.Types.Enum.VkPeerMemoryFeatureFlagBitsKHR
import Vulkan.Types.Enum.VkPeerMemoryFeatureFlagsKHR
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSwapchainCreateFlagBitsKHR
import Vulkan.Types.Struct.VkAcquireNextImageInfoKHR
import Vulkan.Types.Struct.VkBindBufferMemoryDeviceGroupInfoKHR
import Vulkan.Types.Struct.VkBindImageMemoryDeviceGroupInfoKHR
import Vulkan.Types.Struct.VkBindImageMemorySwapchainInfoKHR
import Vulkan.Types.Struct.VkDeviceGroupBindSparseInfoKHR
import Vulkan.Types.Struct.VkDeviceGroupCommandBufferBeginInfoKHR
import Vulkan.Types.Struct.VkDeviceGroupPresentCapabilitiesKHR
import Vulkan.Types.Struct.VkDeviceGroupPresentInfoKHR
import Vulkan.Types.Struct.VkDeviceGroupRenderPassBeginInfoKHR
import Vulkan.Types.Struct.VkDeviceGroupSubmitInfoKHR
import Vulkan.Types.Struct.VkDeviceGroupSwapchainCreateInfoKHR
import Vulkan.Types.Struct.VkImageSwapchainCreateInfoKHR
import Vulkan.Types.Struct.VkMemoryAllocateFlagsInfoKHR
import Vulkan.Types.Command.VkAcquireNextImage2KHR
import Vulkan.Types.Command.VkCmdDispatchBaseKHR
import Vulkan.Types.Command.VkCmdSetDeviceMaskKHR
import Vulkan.Types.Command.VkGetDeviceGroupPeerMemoryFeaturesKHR
import Vulkan.Types.Command.VkGetDeviceGroupPresentCapabilitiesKHR
import Vulkan.Types.Command.VkGetDeviceGroupSurfacePresentModesKHR
import Vulkan.Types.Command.VkGetPhysicalDevicePresentRectanglesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_DEVICE_GROUP_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_DEVICE_GROUP_SPEC_VERSION = 4

pattern VK_KHR_DEVICE_GROUP_EXTENSION_NAME :: CString
pattern VK_KHR_DEVICE_GROUP_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_DEVICE_GROUP_EXTENSION_NAME = Ptr ("VK_KHR_device_group\0"##)

#else

module Vulkan.Ext.VK_KHR_device_group where

#endif