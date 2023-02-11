#include <vulkan/vulkan.h>

module Vulkan.Types.FuncPointer where

import Data.Int
import Data.Void
import Data.Word
import Foreign.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkDebugReportFlagsEXT
import Vulkan.Types.Enum.VkDebugReportObjectTypeEXT
import Vulkan.Types.Enum.VkDebugUtilsMessageSeverityFlagBitsEXT
import Vulkan.Types.Enum.VkDebugUtilsMessageTypeFlagsEXT
import Vulkan.Types.Enum.VkInternalAllocationType
import Vulkan.Types.Enum.VkSystemAllocationScope
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDebugUtilsMessengerCallbackDataEXT
import Vulkan.Types.Struct.VkDeviceMemoryReportCallbackDataEXT



type PFN_vkAllocationFunction =
          Ptr () -- ^ pUserData
       -> #{type size_t} -- ^ size
       -> #{type size_t} -- ^ alignment
       -> VkSystemAllocationScope -- ^ allocationScope
       -> IO (Ptr ())

type PFN_vkDebugReportCallbackEXT =
          VkDebugReportFlagsEXT -- ^ flags
       -> VkDebugReportObjectTypeEXT -- ^ objectType
       -> #{type uint64_t} -- ^ object
       -> #{type size_t} -- ^ location
       -> #{type int32_t} -- ^ messageCode
       -> Ptr #{type char} -- ^ pLayerPrefix
       -> Ptr #{type char} -- ^ pMessage
       -> Ptr () -- ^ pUserData
       -> IO VkBool32

type PFN_vkDebugUtilsMessengerCallbackEXT =
          VkDebugUtilsMessageSeverityFlagBitsEXT -- ^ messageSeverity
       -> VkDebugUtilsMessageTypeFlagsEXT -- ^ messageTypes
       -> Ptr VkDebugUtilsMessengerCallbackDataEXT -- ^ pCallbackData
       -> Ptr () -- ^ pUserData
       -> IO VkBool32

type PFN_vkDeviceMemoryReportCallbackEXT =
          Ptr VkDeviceMemoryReportCallbackDataEXT -- ^ pCallbackData
       -> Ptr () -- ^ pUserData
       -> IO ()

type PFN_vkFreeFunction =
          Ptr () -- ^ pUserData
       -> Ptr () -- ^ pMemory
       -> IO ()

type PFN_vkGetInstanceProcAddrLUNARG =
          VkInstance -- ^ instance
       -> Ptr #{type char} -- ^ pName
       -> IO (FunPtr PFN_vkVoidFunction)

type PFN_vkInternalAllocationNotification =
          Ptr () -- ^ pUserData
       -> #{type size_t} -- ^ size
       -> VkInternalAllocationType -- ^ allocationType
       -> VkSystemAllocationScope -- ^ allocationScope
       -> IO ()

type PFN_vkInternalFreeNotification =
          Ptr () -- ^ pUserData
       -> #{type size_t} -- ^ size
       -> VkInternalAllocationType -- ^ allocationType
       -> VkSystemAllocationScope -- ^ allocationScope
       -> IO ()

type PFN_vkReallocationFunction =
          Ptr () -- ^ pUserData
       -> Ptr () -- ^ pOriginal
       -> #{type size_t} -- ^ size
       -> #{type size_t} -- ^ alignment
       -> VkSystemAllocationScope -- ^ allocationScope
       -> IO (Ptr ())

type PFN_vkVoidFunction = Void