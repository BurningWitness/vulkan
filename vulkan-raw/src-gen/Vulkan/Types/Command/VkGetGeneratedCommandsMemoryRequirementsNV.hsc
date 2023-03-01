{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Command.VkGetGeneratedCommandsMemoryRequirementsNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkGeneratedCommandsMemoryRequirementsInfoNV
import Vulkan.Types.Struct.VkMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetGeneratedCommandsMemoryRequirementsNV =
          VkDevice -- ^ device
       -> Ptr VkGeneratedCommandsMemoryRequirementsInfoNV -- ^ pInfo
       -> Ptr VkMemoryRequirements2 -- ^ pMemoryRequirements
       -> IO ()

vkFunGetGeneratedCommandsMemoryRequirementsNV :: VkFun VkGetGeneratedCommandsMemoryRequirementsNV
vkFunGetGeneratedCommandsMemoryRequirementsNV = VkFun (Ptr ("vkGetGeneratedCommandsMemoryRequirementsNV\0"##))

#else

module Vulkan.Types.Command.VkGetGeneratedCommandsMemoryRequirementsNV where

#endif