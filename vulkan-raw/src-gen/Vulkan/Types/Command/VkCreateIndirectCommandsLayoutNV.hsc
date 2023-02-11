{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Command.VkCreateIndirectCommandsLayoutNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkIndirectCommandsLayoutCreateInfoNV
import Vulkan.Types.VkFun



type VkCreateIndirectCommandsLayoutNV =
          VkDevice -- ^ device
       -> Ptr VkIndirectCommandsLayoutCreateInfoNV -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkIndirectCommandsLayoutNV -- ^ pIndirectCommandsLayout
       -> IO VkResult

vkFunCreateIndirectCommandsLayoutNV :: VkFun VkCreateIndirectCommandsLayoutNV
vkFunCreateIndirectCommandsLayoutNV = VkFun (Ptr ("vkCreateIndirectCommandsLayoutNV\0"##))

#else

module Vulkan.Types.Command.VkCreateIndirectCommandsLayoutNV where

#endif