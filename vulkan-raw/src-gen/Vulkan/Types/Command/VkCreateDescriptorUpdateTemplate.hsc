{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkCreateDescriptorUpdateTemplate where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkDescriptorUpdateTemplateCreateInfo
import Vulkan.Types.VkFun



type VkCreateDescriptorUpdateTemplate =
          VkDevice -- ^ device
       -> Ptr VkDescriptorUpdateTemplateCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkDescriptorUpdateTemplate -- ^ pDescriptorUpdateTemplate
       -> IO VkResult

vkFunCreateDescriptorUpdateTemplate :: VkFun VkCreateDescriptorUpdateTemplate
vkFunCreateDescriptorUpdateTemplate = VkFun (Ptr ("vkCreateDescriptorUpdateTemplate\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkCreateDescriptorUpdateTemplate"
  vkCreateDescriptorUpdateTemplate
    :: VkCreateDescriptorUpdateTemplate

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateDescriptorUpdateTemplate"
  vkCreateDescriptorUpdateTemplateUnsafe
    :: VkCreateDescriptorUpdateTemplate
##endif

#else

module Vulkan.Types.Command.VkCreateDescriptorUpdateTemplate where

#endif