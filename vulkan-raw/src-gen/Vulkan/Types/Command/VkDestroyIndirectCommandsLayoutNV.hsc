{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Command.VkDestroyIndirectCommandsLayoutNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyIndirectCommandsLayoutNV =
          VkDevice -- ^ device
       -> VkIndirectCommandsLayoutNV -- ^ indirectCommandsLayout
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyIndirectCommandsLayoutNV :: VkFun VkDestroyIndirectCommandsLayoutNV
vkFunDestroyIndirectCommandsLayoutNV = VkFun (Ptr ("vkDestroyIndirectCommandsLayoutNV\0"##))

#else

module Vulkan.Types.Command.VkDestroyIndirectCommandsLayoutNV where

#endif