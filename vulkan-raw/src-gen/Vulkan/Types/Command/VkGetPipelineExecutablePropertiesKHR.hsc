{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_executable_properties

module Vulkan.Types.Command.VkGetPipelineExecutablePropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPipelineExecutablePropertiesKHR
import Vulkan.Types.Struct.VkPipelineInfoKHR
import Vulkan.Types.VkFun



type VkGetPipelineExecutablePropertiesKHR =
          VkDevice -- ^ device
       -> Ptr VkPipelineInfoKHR -- ^ pPipelineInfo
       -> Ptr #{type uint32_t} -- ^ pExecutableCount
       -> Ptr VkPipelineExecutablePropertiesKHR -- ^ pProperties
       -> IO VkResult

vkFunGetPipelineExecutablePropertiesKHR :: VkFun VkGetPipelineExecutablePropertiesKHR
vkFunGetPipelineExecutablePropertiesKHR = VkFun (Ptr ("vkGetPipelineExecutablePropertiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPipelineExecutablePropertiesKHR where

#endif