{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_AMD_display_native_hdr

module Vulkan.Types.Command.VkSetLocalDimmingAMD where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkSetLocalDimmingAMD =
          VkDevice -- ^ device
       -> VkSwapchainKHR -- ^ swapChain
       -> VkBool32 -- ^ localDimmingEnable
       -> IO ()

vkFunSetLocalDimmingAMD :: VkFun VkSetLocalDimmingAMD
vkFunSetLocalDimmingAMD = VkFun (Ptr ("vkSetLocalDimmingAMD\0"##))

#else

module Vulkan.Types.Command.VkSetLocalDimmingAMD where

#endif