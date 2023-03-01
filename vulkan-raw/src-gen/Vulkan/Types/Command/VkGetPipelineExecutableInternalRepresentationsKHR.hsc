{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_executable_properties

module Vulkan.Types.Command.VkGetPipelineExecutableInternalRepresentationsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPipelineExecutableInfoKHR
import Vulkan.Types.Struct.VkPipelineExecutableInternalRepresentationKHR
import Vulkan.Types.VkFun



type VkGetPipelineExecutableInternalRepresentationsKHR =
          VkDevice -- ^ device
       -> Ptr VkPipelineExecutableInfoKHR -- ^ pExecutableInfo
       -> Ptr #{type uint32_t} -- ^ pInternalRepresentationCount
       -> Ptr VkPipelineExecutableInternalRepresentationKHR -- ^ pInternalRepresentations
       -> IO VkResult

vkFunGetPipelineExecutableInternalRepresentationsKHR :: VkFun VkGetPipelineExecutableInternalRepresentationsKHR
vkFunGetPipelineExecutableInternalRepresentationsKHR = VkFun (Ptr ("vkGetPipelineExecutableInternalRepresentationsKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPipelineExecutableInternalRepresentationsKHR where

#endif