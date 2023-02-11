{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetDescriptorSetLayoutSupport where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDescriptorSetLayoutCreateInfo
import Vulkan.Types.Struct.VkDescriptorSetLayoutSupport
import Vulkan.Types.VkFun



type VkGetDescriptorSetLayoutSupport =
          VkDevice -- ^ device
       -> Ptr VkDescriptorSetLayoutCreateInfo -- ^ pCreateInfo
       -> Ptr VkDescriptorSetLayoutSupport -- ^ pSupport
       -> IO ()

vkFunGetDescriptorSetLayoutSupport :: VkFun VkGetDescriptorSetLayoutSupport
vkFunGetDescriptorSetLayoutSupport = VkFun (Ptr ("vkGetDescriptorSetLayoutSupport\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetDescriptorSetLayoutSupport"
  vkGetDescriptorSetLayoutSupport
    :: VkGetDescriptorSetLayoutSupport

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetDescriptorSetLayoutSupport"
  vkGetDescriptorSetLayoutSupportUnsafe
    :: VkGetDescriptorSetLayoutSupport
##endif

#else

module Vulkan.Types.Command.VkGetDescriptorSetLayoutSupport where

#endif