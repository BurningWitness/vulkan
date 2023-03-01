{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_marker

module Vulkan.Ext.VK_EXT_debug_marker
  ( pattern VK_EXT_DEBUG_MARKER_SPEC_VERSION
  , pattern VK_EXT_DEBUG_MARKER_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT
  , VkDebugReportObjectTypeEXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT
  , VkDebugMarkerObjectNameInfoEXT (..)
  , VkDebugMarkerObjectTagInfoEXT (..)
  , VkDebugMarkerMarkerInfoEXT (..)
  , VkDebugMarkerSetObjectTagEXT
  , vkFunDebugMarkerSetObjectTagEXT
  , VkDebugMarkerSetObjectNameEXT
  , vkFunDebugMarkerSetObjectNameEXT
  , VkCmdDebugMarkerBeginEXT
  , vkFunCmdDebugMarkerBeginEXT
  , VkCmdDebugMarkerEndEXT
  , vkFunCmdDebugMarkerEndEXT
  , VkCmdDebugMarkerInsertEXT
  , vkFunCmdDebugMarkerInsertEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDebugReportObjectTypeEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDebugMarkerMarkerInfoEXT
import Vulkan.Types.Struct.VkDebugMarkerObjectNameInfoEXT
import Vulkan.Types.Struct.VkDebugMarkerObjectTagInfoEXT
import Vulkan.Types.Command.VkCmdDebugMarkerBeginEXT
import Vulkan.Types.Command.VkCmdDebugMarkerEndEXT
import Vulkan.Types.Command.VkCmdDebugMarkerInsertEXT
import Vulkan.Types.Command.VkDebugMarkerSetObjectNameEXT
import Vulkan.Types.Command.VkDebugMarkerSetObjectTagEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DEBUG_MARKER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DEBUG_MARKER_SPEC_VERSION = 4

pattern VK_EXT_DEBUG_MARKER_EXTENSION_NAME :: CString
pattern VK_EXT_DEBUG_MARKER_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DEBUG_MARKER_EXTENSION_NAME = Ptr ("VK_EXT_debug_marker\0"##)

#else

module Vulkan.Ext.VK_EXT_debug_marker where

#endif