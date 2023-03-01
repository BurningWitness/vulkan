{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_fd

module Vulkan.Types.Command.VkImportFenceFdKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImportFenceFdInfoKHR
import Vulkan.Types.VkFun



type VkImportFenceFdKHR =
          VkDevice -- ^ device
       -> Ptr VkImportFenceFdInfoKHR -- ^ pImportFenceFdInfo
       -> IO VkResult

vkFunImportFenceFdKHR :: VkFun VkImportFenceFdKHR
vkFunImportFenceFdKHR = VkFun (Ptr ("vkImportFenceFdKHR\0"##))

#else

module Vulkan.Types.Command.VkImportFenceFdKHR where

#endif