{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NVX_binary_import

module Vulkan.Types.Command.VkCreateCuFunctionNVX where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkCuFunctionCreateInfoNVX
import Vulkan.Types.VkFun



type VkCreateCuFunctionNVX =
          VkDevice -- ^ device
       -> Ptr VkCuFunctionCreateInfoNVX -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkCuFunctionNVX -- ^ pFunction
       -> IO VkResult

vkFunCreateCuFunctionNVX :: VkFun VkCreateCuFunctionNVX
vkFunCreateCuFunctionNVX = VkFun (Ptr ("vkCreateCuFunctionNVX\0"##))

#else

module Vulkan.Types.Command.VkCreateCuFunctionNVX where

#endif