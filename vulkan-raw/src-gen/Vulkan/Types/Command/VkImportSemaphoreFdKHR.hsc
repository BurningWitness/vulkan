{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_fd

module Vulkan.Types.Command.VkImportSemaphoreFdKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImportSemaphoreFdInfoKHR
import Vulkan.Types.VkFun



type VkImportSemaphoreFdKHR =
          VkDevice -- ^ device
       -> Ptr VkImportSemaphoreFdInfoKHR -- ^ pImportSemaphoreFdInfo
       -> IO VkResult

vkFunImportSemaphoreFdKHR :: VkFun VkImportSemaphoreFdKHR
vkFunImportSemaphoreFdKHR = VkFun (Ptr ("vkImportSemaphoreFdKHR\0"##))

#else

module Vulkan.Types.Command.VkImportSemaphoreFdKHR where

#endif