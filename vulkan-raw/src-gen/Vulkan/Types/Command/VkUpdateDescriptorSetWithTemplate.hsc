{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkUpdateDescriptorSetWithTemplate where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkUpdateDescriptorSetWithTemplate =
          VkDevice -- ^ device
       -> VkDescriptorSet -- ^ descriptorSet
       -> VkDescriptorUpdateTemplate -- ^ descriptorUpdateTemplate
       -> Ptr () -- ^ pData
       -> IO ()

vkFunUpdateDescriptorSetWithTemplate :: VkFun VkUpdateDescriptorSetWithTemplate
vkFunUpdateDescriptorSetWithTemplate = VkFun (Ptr ("vkUpdateDescriptorSetWithTemplate\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkUpdateDescriptorSetWithTemplate"
  vkUpdateDescriptorSetWithTemplate
    :: VkUpdateDescriptorSetWithTemplate

foreign import CALLCV unsafe "vulkan/vulkan.h vkUpdateDescriptorSetWithTemplate"
  vkUpdateDescriptorSetWithTemplateUnsafe
    :: VkUpdateDescriptorSetWithTemplate
##endif

#else

module Vulkan.Types.Command.VkUpdateDescriptorSetWithTemplate where

#endif