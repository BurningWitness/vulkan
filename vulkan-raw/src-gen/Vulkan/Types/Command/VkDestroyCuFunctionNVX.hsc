{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NVX_binary_import

module Vulkan.Types.Command.VkDestroyCuFunctionNVX where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyCuFunctionNVX =
          VkDevice -- ^ device
       -> VkCuFunctionNVX -- ^ function
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyCuFunctionNVX :: VkFun VkDestroyCuFunctionNVX
vkFunDestroyCuFunctionNVX = VkFun (Ptr ("vkDestroyCuFunctionNVX\0"##))

#else

module Vulkan.Types.Command.VkDestroyCuFunctionNVX where

#endif