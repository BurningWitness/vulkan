{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NVX_binary_import

module Vulkan.Types.Command.VkDestroyCuModuleNVX where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyCuModuleNVX =
          VkDevice -- ^ device
       -> VkCuModuleNVX -- ^ module
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyCuModuleNVX :: VkFun VkDestroyCuModuleNVX
vkFunDestroyCuModuleNVX = VkFun (Ptr ("vkDestroyCuModuleNVX\0"##))

#else

module Vulkan.Types.Command.VkDestroyCuModuleNVX where

#endif