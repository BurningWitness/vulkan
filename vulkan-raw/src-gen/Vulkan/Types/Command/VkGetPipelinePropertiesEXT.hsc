{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_properties

module Vulkan.Types.Command.VkGetPipelinePropertiesEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBaseOutStructure
import Vulkan.Types.Struct.VkPipelineInfoEXT
import Vulkan.Types.VkFun



type VkGetPipelinePropertiesEXT =
          VkDevice -- ^ device
       -> Ptr VkPipelineInfoEXT -- ^ pPipelineInfo
       -> Ptr VkBaseOutStructure -- ^ pPipelineProperties
       -> IO VkResult

vkFunGetPipelinePropertiesEXT :: VkFun VkGetPipelinePropertiesEXT
vkFunGetPipelinePropertiesEXT = VkFun (Ptr ("vkGetPipelinePropertiesEXT\0"##))

#else

module Vulkan.Types.Command.VkGetPipelinePropertiesEXT where

#endif