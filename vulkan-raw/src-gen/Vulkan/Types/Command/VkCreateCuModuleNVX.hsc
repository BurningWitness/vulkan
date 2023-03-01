{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NVX_binary_import

module Vulkan.Types.Command.VkCreateCuModuleNVX where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkCuModuleCreateInfoNVX
import Vulkan.Types.VkFun



type VkCreateCuModuleNVX =
          VkDevice -- ^ device
       -> Ptr VkCuModuleCreateInfoNVX -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkCuModuleNVX -- ^ pModule
       -> IO VkResult

vkFunCreateCuModuleNVX :: VkFun VkCreateCuModuleNVX
vkFunCreateCuModuleNVX = VkFun (Ptr ("vkCreateCuModuleNVX\0"##))

#else

module Vulkan.Types.Command.VkCreateCuModuleNVX where

#endif