{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NVX_binary_import

module Vulkan.Types.Command.VkCmdCuLaunchKernelNVX where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCuLaunchInfoNVX
import Vulkan.Types.VkFun



type VkCmdCuLaunchKernelNVX =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCuLaunchInfoNVX -- ^ pLaunchInfo
       -> IO ()

vkFunCmdCuLaunchKernelNVX :: VkFun VkCmdCuLaunchKernelNVX
vkFunCmdCuLaunchKernelNVX = VkFun (Ptr ("vkCmdCuLaunchKernelNVX\0"##))

#else

module Vulkan.Types.Command.VkCmdCuLaunchKernelNVX where

#endif