{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkDestroyDescriptorUpdateTemplate where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyDescriptorUpdateTemplate =
          VkDevice -- ^ device
       -> VkDescriptorUpdateTemplate -- ^ descriptorUpdateTemplate
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyDescriptorUpdateTemplate :: VkFun VkDestroyDescriptorUpdateTemplate
vkFunDestroyDescriptorUpdateTemplate = VkFun (Ptr ("vkDestroyDescriptorUpdateTemplate\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkDestroyDescriptorUpdateTemplate"
  vkDestroyDescriptorUpdateTemplate
    :: VkDestroyDescriptorUpdateTemplate

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyDescriptorUpdateTemplate"
  vkDestroyDescriptorUpdateTemplateUnsafe
    :: VkDestroyDescriptorUpdateTemplate
##endif

#else

module Vulkan.Types.Command.VkDestroyDescriptorUpdateTemplate where

#endif